resource "aws_s3_bucket" "my-jenkins-terraform-bucket2" {
  bucket_prefix = var.bucket_prefix
  acl = var.acl
  
   
  
  resource "aws_s3_bucket_versioning" "example" {
  bucket = aws_s3_bucket.example.id

  versioning_configuration {
    status = "Enabled"
  }
}
  
  versioning {
    enabled = var.versioning
  }
  
  tags = var.tags
}



resource "aws_s3_bucket_versioning" "example" {
  bucket = aws_s3_bucket.example.id

  versioning_configuration {
    status = "Enabled"
  }
}
