terraform {
  backend "s3" {
    bucket = "my-jenkins-terraform-bucket"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "my-Dynamodb-TF-table"
  }
}
