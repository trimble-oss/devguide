locals {
  common_tags = {
    project      = var.project
    env          = var.env
    orchestrator = "terraform"
  }
}

module "shared" {
  source = "../../modules/shared"
  providers = {
    aws = aws.us1
  }

  aws_account_id = var.aws_account_id
  env            = var.env
  project        = var.project
  aws_regions    = local.aws_regions
  common_tags    = local.common_tags
}

module "www" {
  source = "../../modules/www"
  providers = {
    aws = aws.us1
  }

  aws_account_id   = var.aws_account_id
  env              = var.env
  project          = var.project
  aws_regions      = local.aws_regions
  common_tags      = local.common_tags
  domain           = var.domain
  functions_bucket = module.shared.functions_bucket
}


module "build" {
  source = "../../modules/build"
  providers = {
    aws = aws.us1
  }

  aws_account_id         = var.aws_account_id
  env                    = var.env
  project                = var.project
  aws_regions            = local.aws_regions
  common_tags            = local.common_tags
  content_bucket         = module.www.content_bucket
  distribution           = module.www.distribution
  allowed_ips            = var.allowed_ips
  vpc_name               = var.vpc_name
  functions_bucket       = module.shared.functions_bucket
  subnet_public_tag_name = var.subnet_public_tag_name
  known_hosts            = var.known_hosts
  branch                 = var.branch
}
