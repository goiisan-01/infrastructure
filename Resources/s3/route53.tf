resource "aws_route53_record" "main" {
  zone_id = "Z0527326Q1IRS4PX0WAW"
  name    = var.env_short
  type    = "A"
  ttl     = 300
  alias {
    name                   = aws_cloudfront_distribution.s3_distribution.name
    zone_id                = aws_cloudfront_distribution.s3_distribution.zone_id
  }
}