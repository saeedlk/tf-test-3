resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-lk"

  tags = {
    Name        = "My bucket lk"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}
