resource "aws_s3_bucket" "bucket" {
  bucket = "lmu-msk-broker-logs-bucket"
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}