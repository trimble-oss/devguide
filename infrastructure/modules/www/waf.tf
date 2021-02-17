resource "aws_wafv2_web_acl" "content" {
  name        = "${var.project}-${var.env}-${local.region_alias}-cfacl"
  scope       = "CLOUDFRONT"

  default_action {
    allow {}
  }

  tags = local.tags

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "${var.project}-${var.env}-${local.region_alias}-cfacl"
    sampled_requests_enabled   = true
  }
}