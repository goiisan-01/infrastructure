resource "aws_route53_record" "main" {
  zone_id = "Z0527326Q1IRS4PX0WAW"
  name    = var.env_short
  type    = "A"

  alias {
    name    = aws_cloudfront_distribution.s3_distribution.domain_name
    zone_id = aws_cloudfront_distribution.s3_distribution.hosted_zone_id
    evaluate_target_health = false
  }
}
