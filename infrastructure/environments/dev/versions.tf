terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.11.0"
    }
  }
  backend "s3" {
    bucket  = "devguide-dev-us1-terraform-state"
    key     = "dev/terraform.tfstate"
    profile = "devguide-dev"
    region  = "us-east-1"
  }
  required_version = ">= 0.13.3"
}
