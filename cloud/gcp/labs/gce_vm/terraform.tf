terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.6.2"
    }
    google = {
      source = "hashicorp/google"
      version = "4.72.0"
    }
  }
  backend "s3" {
    bucket = "ca14-terraform-backend"
    key    = "terraform_labs/gcp/"
    region = "eu-west-2"
  }
}

provider "aws" {
  # Configuration options
  region                   = "eu-west-2"
  shared_config_files      = ["/Users/snrj/.aws/config"]
  shared_credentials_files = ["/Users/snrj/.aws/credentials"]
  profile                  = "default"
}

#provider "google" {
#  # Configuration options
#}