resource "aws_s3_bucket" "build" {
  bucket = "${var.project}-${var.env}-${local.region_alias}-build"
  acl    = "private"
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

resource "aws_s3_bucket" "source" {
  bucket = "${var.project}-${var.env}-${local.region_alias}-source"
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
}

resource "aws_s3_bucket_public_access_block" "build" {
  bucket = aws_s3_bucket.build.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_public_access_block" "source" {
  bucket = aws_s3_bucket.source.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
