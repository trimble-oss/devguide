terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.11.0"
    }
  }
  backend "s3" {
    bucket  = "devguide-prod-us1-terraform-state"
    key     = "prod/terraform.tfstate"
    profile = "devguide-prod"
    region  = "us-east-1"
  }
  required_version = ">= 0.13.3"
}
