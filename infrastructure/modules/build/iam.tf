resource "aws_iam_role" "build" {
  name = "${var.project}-${var.env}-${local.region_alias}-build-service-role"
  path = "/service-role/"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF

  tags = local.tags
}

resource "aws_iam_role_policy" "build" {
  role = aws_iam_role.build.name

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ]
    },
    {
      "Effect": "Allow",
      "Action": [
          "s3:PutObject",
          "s3:GetObject",
          "s3:GetBucketAcl",
          "s3:GetBucketLocation"
      ],
      "Resource": [
        "${aws_s3_bucket.build.arn}",
        "${aws_s3_bucket.build.arn}:*"
      ]
    },
    {
        "Effect": "Allow",
        "Action": [
            "ssm:GetParameters"
        ],
        "Resource": "*"
    },
    {
        "Effect": "Allow",
        "Action": [
            "s3:GetObject",
            "s3:GetObjectVersion"
        ],
        "Resource": [
            "${aws_s3_bucket.source.arn}/source.zip",
            "${aws_s3_bucket.source.arn}/source.zip/*"
        ]
    },
    {
        "Effect": "Allow",
        "Resource": [
            "${aws_s3_bucket.source.arn}"
        ],
        "Action": [
            "s3:ListBucket",
            "s3:GetBucketAcl",
            "s3:GetBucketLocation"
        ]
    },
    {
        "Effect": "Allow",
        "Action": "cloudfront:CreateInvalidation",
        "Resource": "${var.distribution.arn}"
    },
    {
        "Sid": "VisualEditor0",
        "Effect": "Allow",
        "Action": [
            "s3:PutAnalyticsConfiguration",
            "s3:GetObjectVersionTagging",
            "s3:CreateBucket",
            "s3:ReplicateObject",
            "s3:GetObjectAcl",
            "s3:GetBucketObjectLockConfiguration",
            "s3:DeleteBucketWebsite",
            "s3:GetIntelligentTieringConfiguration",
            "s3:PutLifecycleConfiguration",
            "s3:GetObjectVersionAcl",
            "s3:PutObjectTagging",
            "s3:DeleteObject",
            "s3:DeleteObjectTagging",
            "s3:GetBucketPolicyStatus",
            "s3:GetObjectRetention",
            "s3:GetBucketWebsite",
            "s3:PutReplicationConfiguration",
            "s3:DeleteObjectVersionTagging",
            "s3:PutObjectLegalHold",
            "s3:GetObjectLegalHold",
            "s3:GetBucketNotification",
            "s3:PutBucketCORS",
            "s3:GetReplicationConfiguration",
            "s3:ListMultipartUploadParts",
            "s3:PutObject",
            "s3:GetObject",
            "s3:PutBucketNotification",
            "s3:PutBucketLogging",
            "s3:GetAnalyticsConfiguration",
            "s3:PutBucketObjectLockConfiguration",
            "s3:GetObjectVersionForReplication",
            "s3:GetLifecycleConfiguration",
            "s3:GetInventoryConfiguration",
            "s3:GetBucketTagging",
            "s3:PutAccelerateConfiguration",
            "s3:DeleteObjectVersion",
            "s3:GetBucketLogging",
            "s3:ListBucketVersions",
            "s3:ReplicateTags",
            "s3:RestoreObject",
            "s3:ListBucket",
            "s3:GetAccelerateConfiguration",
            "s3:GetBucketPolicy",
            "s3:PutEncryptionConfiguration",
            "s3:GetEncryptionConfiguration",
            "s3:GetObjectVersionTorrent",
            "s3:AbortMultipartUpload",
            "s3:PutBucketTagging",
            "s3:GetBucketRequestPayment",
            "s3:DeleteBucketOwnershipControls",
            "s3:GetObjectTagging",
            "s3:GetMetricsConfiguration",
            "s3:GetBucketOwnershipControls",
            "s3:DeleteBucket",
            "s3:PutBucketVersioning",
            "s3:GetBucketPublicAccessBlock",
            "s3:ListBucketMultipartUploads",
            "s3:PutIntelligentTieringConfiguration",
            "s3:PutMetricsConfiguration",
            "s3:PutBucketOwnershipControls",
            "s3:PutObjectVersionTagging",
            "s3:GetBucketVersioning",
            "s3:GetBucketAcl",
            "s3:PutInventoryConfiguration",
            "s3:GetObjectTorrent",
            "s3:PutBucketWebsite",
            "s3:PutBucketRequestPayment",
            "s3:PutObjectRetention",
            "s3:GetBucketCORS",
            "s3:GetBucketLocation",
            "s3:ReplicateDelete",
            "s3:GetObjectVersion"
        ],
        "Resource": [
            "${var.content_bucket.arn}/*",
            "${var.content_bucket.arn}"
        ]
    },
    {
        "Sid": "VisualEditor1",
        "Effect": "Allow",
        "Action": [
            "s3:ListStorageLensConfigurations",
            "s3:GetAccessPoint",
            "s3:GetAccountPublicAccessBlock",
            "s3:ListAllMyBuckets",
            "s3:ListAccessPoints",
            "s3:ListJobs",
            "s3:PutStorageLensConfiguration",
            "s3:CreateJob"
        ],
        "Resource": "*"
    }
  ]
}
POLICY
}

data "aws_iam_policy_document" "AWSLambdaTrustPolicy" {
  statement {
    actions = ["sts:AssumeRole"]
    effect  = "Allow"
    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com", "edgelambda.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "hook_role" {
  name               = "${var.project}-${var.env}-${local.region_alias}-hook-role"
  assume_role_policy = data.aws_iam_policy_document.AWSLambdaTrustPolicy.json

  tags = local.tags
}

resource "aws_iam_role_policy_attachment" "hook_role_policy" {
  role       = aws_iam_role.hook_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_iam_role_policy" "hook_policy" {
  role   = aws_iam_role.hook_role.name
  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
        "Effect": "Allow",
        "Action": [
            "ssm:GetParameter*",
            "kms:Decrypt"
        ],
        "Resource": "*"
    },
    {
        "Effect": "Allow",
        "Action": [
            "s3:PutObject",
            "s3:PutObjectVersion"
        ],
        "Resource": [
            "${aws_s3_bucket.source.arn}/source.zip",
            "${aws_s3_bucket.source.arn}/source.zip/*"
        ]
    },
    {
        "Effect": "Allow",
        "Action": [
            "codebuild:StartBuild"
        ],
        "Resource": [
            "${aws_codebuild_project.build.arn}"
        ]
    }
  ]
}
POLICY
}
