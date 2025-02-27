terraform {
required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
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
