resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  region = "us-east-1"

  tags = {
    Name        = var.bucket_name
    Environment = var.env
  }
}