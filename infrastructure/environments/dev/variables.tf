variable "aws_account_id" {
  description = "The aws account id."
  type        = string
}

variable "env" {
  description = "The stack environment name such as prod"
  type        = string
}

variable "project" {
  description = "Project Name"
  type        = string
}

variable "domain" {
  description = "The site domain name"
  type        = string
}

variable "allowed_ips" {
  description = "IPs allowed to call the webhook"
  type        = list(string)
}

variable "vpc_name" {
  description = "Name of the VPC to lookup"
  type        = string
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
