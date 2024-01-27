terraform {
  required_providers {
    aws = {
     source = "hashicorp/aws"
     version = "5.31.0"
    }
  }


  backend "s3" {
    bucket = "gopisri-dev"
    key    = "provisioner"
    region = "us-east-1"
    dynamodb_table = "gopisri-locking-dev"
  }
}

provider "aws" {
    region = "us-east-1"
}   