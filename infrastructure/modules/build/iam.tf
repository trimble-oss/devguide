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
          "s3:*"
      ],
      "Resource": [
        "${aws_s3_bucket.build.arn}",
        "${aws_s3_bucket.build.arn}/*"
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
  role       = aws_iam_role.hook_role.name
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