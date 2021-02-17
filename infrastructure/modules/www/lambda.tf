resource "aws_s3_bucket_object" "rewrite-index_object" {
  bucket = var.functions_bucket.id
  key    = "rewrite-index-${filemd5("${path.module}/rewrite-index.zip")}.zip"
  acl    = "private"
  source = "${path.module}/rewrite-index.zip"
  etag   = filemd5("${path.module}/rewrite-index.zip")

  tags = local.tags
}

resource "aws_lambda_function" "rewrite-index_function" {
  function_name = "${var.project}-${var.env}-${local.region_alias}-rewrite-index"
  s3_bucket     = var.functions_bucket.id
  s3_key        = aws_s3_bucket_object.rewrite-index_object.id
  role          = aws_iam_role.edge_function_role.arn
  runtime       = "nodejs12.x"
  timeout       = 5
  handler       = "rewrite-index.handler"
  publish       = true

  tags = local.tags
}
