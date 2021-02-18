resource "aws_wafv2_web_acl" "alb" {
  name        = "${var.project}-${var.env}-${local.region_alias}-albacl"
  scope       = "REGIONAL"

  default_action {
    allow {}
  }

  tags = local.tags

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "${var.project}-${var.env}-${local.region_alias}-albacl"
    sampled_requests_enabled   = true
  }
}

resource "aws_wafv2_web_acl_association" "alb" {
  resource_arn = aws_alb.alb.arn
  web_acl_arn  = aws_wafv2_web_acl.alb.arn
}
