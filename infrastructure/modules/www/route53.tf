# data "aws_route53_zone" "zone_data" {
#  name = var.domain
# }

#  resource "aws_route53_record" "alias" {
#    zone_id = data.aws_route53_zone.zone_data.zone_id
#    name    = "www"
#    type    = "A"
#    alias {
#      name                   = aws_cloudfront_distribution.content.domain_name
#      zone_id                = "Z2FDTNDATAQYW2"
#      evaluate_target_health = false
#    }
#  }
