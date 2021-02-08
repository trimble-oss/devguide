resource "aws_cloudfront_origin_access_identity" "oai" {
  comment = "access-identity-${aws_s3_bucket.content_bucket.id}.s3.amazonaws.com"
}

# data "aws_acm_certificate" "certificate" {
#   domain      = "*.${var.domain}"
#   statuses    = ["ISSUED"]
#   most_recent = true
# }


resource "aws_cloudfront_distribution" "content" {
  origin {
    domain_name = "${aws_s3_bucket.content_bucket.id}.s3.amazonaws.com"
    origin_id   = "S3-${aws_s3_bucket.content_bucket.id}"

    s3_origin_config {
      origin_access_identity = aws_cloudfront_origin_access_identity.oai.cloudfront_access_identity_path
    }
  }

  enabled = true
  #aliases             = [${var.domain}]
  default_root_object = "index.html"
  is_ipv6_enabled     = true

  logging_config {
    include_cookies = false
    bucket          = "${aws_s3_bucket.log_bucket.id}.s3.amazonaws.com"
    prefix          = "cflogs/"
  }

  default_cache_behavior {
    allowed_methods        = ["GET", "HEAD"]
    cached_methods         = ["GET", "HEAD"]
    target_origin_id       = "S3-${aws_s3_bucket.content_bucket.id}"
    viewer_protocol_policy = "redirect-to-https"
    compress               = true

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }

    lambda_function_association {
      event_type = "origin-request"
      lambda_arn = aws_lambda_function.rewrite-index_function.qualified_arn
    }
  }

  price_class = "PriceClass_All"
  restrictions {
    geo_restriction {
      restriction_type = "none"
      locations        = []
    }
  }

  custom_error_response {
    error_code         = 404
    response_code      = 404
    response_page_path = "/404/index.html"
  }

  tags = local.tags

  viewer_certificate {
    cloudfront_default_certificate = true
    minimum_protocol_version       = "TLSv1"
  }

  # viewer_certificate {
  #   acm_certificate_arn            = data.aws_acm_certificate.certificate.arn
  #   cloudfront_default_certificate = false
  #   minimum_protocol_version       = "TLSv1.1_2016"
  #   ssl_support_method             = "sni-only"
  # }
}

resource "aws_s3_bucket_policy" "content_bucket" {
  bucket = aws_s3_bucket.content_bucket.id

  policy = jsonencode(
    {
      Statement = [
        {
          Action = "s3:GetObject"
          Effect = "Allow"
          Principal = {
            AWS = aws_cloudfront_origin_access_identity.oai.iam_arn
          }
          Resource = [
            "${aws_s3_bucket.content_bucket.arn}/*"
          ]
          Sid = ""
        }
      ],
      Version = "2008-10-17"
    }
  )
}
