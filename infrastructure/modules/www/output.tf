output "distribution" {
  description = "CloudFront distribution"
  value       = aws_cloudfront_distribution.content
}

output "content_bucket" {
  description = "Site Content Bucket"
  value       = aws_s3_bucket.content_bucket
}
