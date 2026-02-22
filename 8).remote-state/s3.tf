resource "aws_s3_bucket" "terraform_state" {
  bucket = "remote-state-malli"

  tags = {
    Name        = "Terraform Remote State"
    Environment = "Dev"
  }
}


resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.terraform_state.id

  versioning_configuration {                #Versioning = rollback protection
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "encryption" {
  bucket = aws_s3_bucket.terraform_state.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}