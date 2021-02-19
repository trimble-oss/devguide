provider "aws" {
  alias               = "us1"
  region              = "us-east-1"
  profile             = "devguide-prod"
  allowed_account_ids = [var.aws_account_id]
}

locals {
  # Map of Regions to Region Alias
  aws_regions = {
    us-east-1      = "us1"
  }
}
