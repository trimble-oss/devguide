resource "aws_s3_bucket" "functions_bucket" {
  bucket = "${var.project}-${var.env}-${local.region_alias}-functions"
  acl    = "private"
  tags   = local.tags
  versioning {
    enabled    = true
    mfa_delete = false
  }
  lifecycle_rule {
    id                                     = "Deleted Content Lifecycle"
    enabled                                = true
    abort_incomplete_multipart_upload_days = 7
    noncurrent_version_expiration {
      days = 31
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
