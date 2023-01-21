resource "aws_route53_record" "main" {
  zone_id = "Z0527326Q1IRS4PX0WAW"
  name    = var.env
  type    = "CNAME"
  ttl     = 300
  records = [aws_cloudfront_distribution.s3_distribution.id]
}