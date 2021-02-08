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

variable "domain" {
  description = "The site domain name"
  type        = string
}

variable "functions_bucket" {
  description = "Lambda functions bucket"
  type = object({
    id : string
  })
}
