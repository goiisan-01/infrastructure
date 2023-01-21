resource "aws_s3_bucket_policy" "main" {
  bucket = aws_s3_bucket.bucket.id
  policy = data.aws_iam_policy_document.main.json
}

data "aws_iam_policy_document" "main" {
  statement {
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    actions = [
      "s3:GetObject",
      "s3:ListBucket",
    ]

    resources = [
      aws_s3_bucket.bucket.arn,
      "${aws_s3_bucket.bucket.arn}/*",
    ]
  }
}