terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.6.2"
    }
  }
  backend "s3" {
    bucket = "ca14-terraform-backend"
    key    = "elk_stack/aws_terraform.tfstate"
    region = "eu-west-2"
  }
}

provider "aws" {
  region  = "eu-west-2"
  profile = "default"
}
