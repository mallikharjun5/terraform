resource "aws_s3_bucket" "roboshop" {
  bucket = "remote-state-malli"
  region = "us-east-1"

  tags = {
    Name        = "My bucket"
  }
}