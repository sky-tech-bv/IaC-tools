# https://registry.terraform.io/providers/hashicorp/aws/3.74.2
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
 
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  # VERSION IS NOT NEEDED HERE
}

# resource "aws_s3_bucket" "test_s3_bucket" {
#     bucket = "test-s3-bucket-skytechbv-0001"
#     versioning {
#        enabled = true
#    }
# }

resource "aws_iam_user" "test_iam_user" {
    name = "test_new_iam_user_from_terminal_updated"
}

resource "aws_s3_bucket_versioning" "test_s3_bucket" {
  bucket = "test-s3-bucket-skytechbv-0001"
  versioning_configuration {
    status = "Enabled"
  }
}
