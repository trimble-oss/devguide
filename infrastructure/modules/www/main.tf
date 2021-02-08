data "aws_region" "current" {}

locals {
  region_alias = var.aws_regions[data.aws_region.current.name]
  tags         = merge(var.common_tags, { region = local.region_alias })
}
