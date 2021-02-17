resource "aws_s3_bucket_object" "hook" {
  bucket = var.functions_bucket.id
  key    = "hook-${filemd5("${path.module}/hook.zip")}.zip"
  acl    = "private"
  source = "${path.module}/hook.zip"
  etag   = filemd5("${path.module}/hook.zip")

  tags = local.tags
}

resource "aws_lambda_layer_version" "zip" {
  filename         = "${path.module}/zip-lambda-layer.zip"
  layer_name       = "${var.project}-${var.env}-${local.region_alias}-zip"
  source_code_hash = filebase64sha256("${path.module}/zip-lambda-layer.zip")
}

resource "aws_lambda_function" "hook" {
  function_name = "${var.project}-${var.env}-${local.region_alias}-hook"
  s3_bucket     = var.functions_bucket.id
  s3_key        = aws_s3_bucket_object.hook.id
  role          = aws_iam_role.hook_role.arn
  runtime       = "nodejs12.x"
  timeout       = 60
  handler       = "hook.handler"
  layers = [
    "arn:aws:lambda:us-east-1:553035198032:layer:git-lambda2:8", # https://github.com/lambci/git-lambda-layer
    aws_lambda_layer_version.zip.arn                             # Built from: https://github.com/morugu/zip-aws-lambda-layer
  ]

  environment {
    variables = {
      GIT_KEY_PARAMETER = aws_ssm_parameter.git_key.name
      KNOWN_HOSTS       = var.known_hosts
      SOURCE_BUCKET     = aws_s3_bucket.source.id
      BRANCH            = var.branch
      BUILD_PROJECT     = aws_codebuild_project.build.id
    }
  }

  tags = local.tags
}

resource "aws_cloudwatch_log_group" "hook" {
  name              = "/aws/lambda/${var.project}-${var.env}-${local.region_alias}-hook"
  retention_in_days = 30

  tags = local.tags
}
