terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.70"
    }
  }
  backend "s3" {
    bucket         = "staticsitevmtfkledson"
    key            = "terraform.tfstate"
    dynamodb_table = "staticsitevmtfkledson"
    region         = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}