data "aws_vpc" "vpc" {
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_security_group" "alb" {
  name        = "${var.project}-${var.env}-${local.region_alias}-alb-sg"
  description = "Allow ALB inbound traffic"
  vpc_id      = data.aws_vpc.vpc.id

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.allowed_ips
  }

  ingress {
    description = "HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = var.allowed_ips
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(local.tags, { Name = "${var.project}-${var.env}-${local.region_alias}-alb-sg" })
}
