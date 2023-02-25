resource "aws_lb" "main" {
  name               = var.ec2_name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.main.id]
  subnets            = [var.subnet_id,var.subnet_id_2]

  enable_deletion_protection = false
}

resource "aws_lb_target_group" "main" {
  name     = var.ec2_name
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id
}

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.main.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.main.arn
  }
}


resource "aws_route53_record" "main" {
  zone_id = "Z0527326Q1IRS4PX0WAW"
  name    = var.env_short
  type    = "A"

  alias {
    name    = aws_lb.main.dns_name
    zone_id = aws_lb.main.zone_id
    evaluate_target_health = false
  }
}