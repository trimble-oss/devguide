resource "aws_ssm_parameter" "git_key" {
  name  = "${var.project}-${var.env}-${local.region_alias}-git-key"
  type  = "SecureString"
  value = "CHANGE ME"
  tags  = local.tags

  lifecycle {
    ignore_changes = [value]
  }
}
