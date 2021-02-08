# data "aws_acm_certificate" "certificate" {
#   domain      = "*.${var.domain}"
#   statuses    = ["ISSUED"]
#   most_recent = true
# }

data "aws_subnet_ids" "alb" {
  vpc_id = data.aws_vpc.vpc.id

  tags = {
    Name = "*-PUB-*"
  }
}

resource "aws_alb" "alb" {
  name            = "${var.project}-${var.env}-${local.region_alias}-alb"
  subnets         = data.aws_subnet_ids.alb.ids
  security_groups = [aws_security_group.alb.id]
  tags            = local.tags
}

resource "aws_alb_listener" "http" {
  load_balancer_arn = aws_alb.alb.id
  port              = "80"
  protocol          = "HTTP"
  ssl_policy        = ""
#   default_action {
#     target_group_arn = ""
#     type             = "redirect"
#     order            = 1
#     redirect {
#       host        = "#{host}"
#       path        = "/#{path}"
#       port        = "443"
#       protocol    = "HTTPS"
#       query       = "#{query}"
#       status_code = "HTTP_301"
#     }
#   }

  default_action {
    type             = "forward"
    target_group_arn = aws_alb_target_group.hook.arn
    order            = 1
  }
}

# resource "aws_alb_listener" "https" {
#   load_balancer_arn = aws_alb.alb.id
#   port              = "443"
#   ssl_policy        = "ELBSecurityPolicy-TLS-1-1-2017-01"
#   protocol          = "HTTPS"
#   certificate_arn   = data.aws_acm_certificate.certificate.arn
#   default_action {
#     type             = "forward"
#     target_group_arn = aws_alb_target_group.hook.arn
#     order            = 1
#   }
# }

resource "aws_alb_target_group" "hook" {
  name        = "${var.project}-${var.env}-${local.region_alias}-hook"
  target_type = "lambda"
  tags        = local.tags
}

resource "aws_lambda_permission" "hook" {
  statement_id  = "AllowExecutionFromlb"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.hook.arn
  principal     = "elasticloadbalancing.amazonaws.com"
  source_arn    = aws_alb_target_group.hook.arn
}

resource "aws_alb_target_group_attachment" "hook" {
  target_group_arn = aws_alb_target_group.hook.arn
  target_id        = aws_lambda_function.hook.arn
  depends_on       = [aws_lambda_permission.hook]
}
