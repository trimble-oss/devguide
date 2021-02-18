resource "aws_s3_bucket" "log_bucket" {
  bucket = "${var.project}-${var.env}-${local.region_alias}-logs"
  acl    = "log-delivery-write"
  tags   = local.tags
  lifecycle_rule {
    id                                     = "Infrequent Log Storage Transition"
    enabled                                = true
    abort_incomplete_multipart_upload_days = 7
    transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = ""
        sse_algorithm     = "AES256"
      }
    }
  }
}

resource "aws_s3_bucket" "content_bucket" {
  bucket = "${var.project}-${var.env}-${local.region_alias}-content"
  acl    = "private"
  tags   = local.tags
  lifecycle_rule {
    id                                     = "Deleted Content Lifecycle"
    enabled                                = true
    abort_incomplete_multipart_upload_days = 7
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = ""
        sse_algorithm     = "AES256"
      }
    }
  }
  logging {
    target_bucket = aws_s3_bucket.log_bucket.id
    target_prefix = "content_s3logs/"
  }
  website {
    index_document = "index.html"
    error_document = "/404/index.html"
  }
}

resource "aws_s3_bucket_public_access_block" "content_bucket" {
  bucket = aws_s3_bucket.content_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_public_access_block" "log_bucket" {
  bucket = aws_s3_bucket.log_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
