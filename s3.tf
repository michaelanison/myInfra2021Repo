resource "aws_s3_bucket" "my-tf-s3-project1" {
  bucket = "my-tf-s3-project1"
}

resource "aws_s3_bucket_acl" "my-tf-s3-project1" {
  bucket = aws_s3_bucket.my-tf-s3-project1.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "versioning_tf-s3-project1" {
  bucket = aws_s3_bucket.my-tf-s3-project1.id
  versioning_configuration {
    status = "Enabled"
  }
}
