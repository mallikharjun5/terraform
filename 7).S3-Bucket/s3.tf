resource "aws_s3_bucket" "roboshop" {
  bucket = "roboshop-test-bucket"
  region = "us-east-1"

  tags = {
    Name        = "My bucket"
  }
}