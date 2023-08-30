terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend s3 {
    bucket = "terraform-state-titio"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-state-lock-titio"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}
