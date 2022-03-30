#resource "aws_s3_bucket" "bucket" {
  #bucket_prefix = var.bucket_prefix
  #acl = var.acl
  
  resource "aws_s3_bucket" "this" {
  count = local.create_bucket ? 1 : 0

  bucket        = var.bucket
  bucket_prefix = var.bucket_prefix

  # hack when `null` value can't be used (eg, from terragrunt, https://github.com/gruntwork-io/terragrunt/pull/1367)
  acl = var.acl != "null" ? var.acl : null
  
  
  }


   #versioning {
    #enabled = var.versioning
  #}
  
  #tags = var.tags
#}
