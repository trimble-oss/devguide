variable "aws_account_id" {
  description = "The aws account id."
  type        = string
}

variable "env" {
  description = "The stack environment name such as prod"
  type        = string
}

variable "common_tags" {
  description = "Common Tags"
  type        = map(string)
}

variable "project" {
  description = "Project Name"
  type        = string
}

variable "aws_regions" {
  description = "AWS Region Map"
  type        = map(string)
}

variable "content_bucket" {
  description = "Site Content Bucket"
  type = object({
    id : string
  })
}

variable "distribution" {
  description = "CloudFront distribution"
  type = object({
    id : string
  })
}

variable "allowed_ips" {
  description = "IPs allowed to call the webhook"
  type        = list(string)
}

variable "vpc_name" {
  description = "Name of the VPC to lookup"
  type        = string
}

variable "functions_bucket" {
  description = "Lambda functions bucket"
  type = object({
    id : string
  })
}

variable "subnet_public_tag_name" {
  description = "Pattern for subnet lookup for ALB"
  type        = string
}

variable "known_hosts" {
  description = "Known host public key for git ssh"
  type        = string
}

variable "branch" {
  description = "Git branch to build"
  type        = string
}
