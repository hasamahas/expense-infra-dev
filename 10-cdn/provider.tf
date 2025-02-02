terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.53.0"
    }
  }

  backend "s3" {
    bucket = "hasamahas-remote-state"
    key    = "expense-dev-cdn"
    region = "us-east-1"
    dynamodb_table = "hasamahas-locking"
  }
}


#provde authentication here
provider "aws" {
  region = "us-east-1"
}