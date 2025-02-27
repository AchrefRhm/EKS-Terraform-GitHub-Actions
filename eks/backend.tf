terraform {
required_version = "=1.5"
required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "=5.10.0"
    }
  }
  backend "s3" {
    bucket         = "my-aws-baket123"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
