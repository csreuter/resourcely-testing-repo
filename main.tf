# main.tf

resource "null_resource" "foo" {
  triggers = {
    foo = var.project
  }
}

resource "aws_s3_bucket" "my-bucket_DXpj8dsyzz4ytZrD" {
  bucket = "my-bucket"
}

resource "aws_s3_bucket_public_access_block" "my-bucket_DXpj8dsyzz4ytZrD" {
  bucket                  = aws_s3_bucket.my-bucket_DXpj8dsyzz4ytZrD.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "my-bucket_DXpj8dsyzz4ytZrD" {
  bucket = aws_s3_bucket.my-bucket_DXpj8dsyzz4ytZrD.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_versioning" "my-bucket_DXpj8dsyzz4ytZrD" {
  bucket = aws_s3_bucket.my-bucket_DXpj8dsyzz4ytZrD.id

  versioning_configuration {
    status = "Disabled"
  }
}
