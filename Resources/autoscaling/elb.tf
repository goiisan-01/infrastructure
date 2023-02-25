resource "aws_lb" "main" {
  name               = var.ec2_name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.main.id]
  #subnets            = [for subnet in aws_subnet.public : subnet.id]

  enable_deletion_protection = false
}

resource "aws_route53_record" "main" {
  zone_id = "Z0527326Q1IRS4PX0WAW"
  name    = var.env_short
  type    = "A"

  alias {
    name    = aws_lb.main.domain_name
    zone_id = aws_lb.main.hosted_zone_id
    evaluate_target_health = false
  }
}