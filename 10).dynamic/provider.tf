terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.33.0"
    }
  }

  backend "s3" {                                      # add this backend block after provisioning s3 and dynamo db
    bucket = "remote-state-malli"                 # s3 bucket name in AWS
    key    = "remote-state-malli-key"              # here key is unique for every repo (now its related to "remote-sate" repo only)
    region = "us-east-1"
    dynamodb_table = "terraform-lock-table"       # we have to create dynamo db for remote state lock (use_lockfile not working now)
    encrypt = true
  }

}

provider "aws" {
  region = "us-east-1"
}