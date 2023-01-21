resource "aws_cloudfront_distribution" "s3_distribution" {
  origin {
    domain_name              = aws_s3_bucket.bucket.bucket_regional_domain_name
    #origin_access_control_id = aws_cloudfront_origin_access_control.default.id
    origin_id                = var.bucket_name
  }

  enabled             = true
  default_root_object = "index.html"

  aliases = ["${var.env_short}.goiisan.com"]

  default_cache_behavior {
    allowed_methods  = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = var.bucket_name

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = "redirect-to-https"
  }

  price_class = "PriceClass_200"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  tags = {
    Environment = "production"
  }

viewer_certificate {
    acm_certificate_arn = "arn:aws:acm:us-east-1:505050218109:certificate/d1575fd6-7dd5-4ea5-9e36-df8aaf12dfa2"
    ssl_support_method = "sni-only"
}
}