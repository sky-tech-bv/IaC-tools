variable "environment" {
  default = "default"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
 
provider "aws" {
  region = "us-east-1"

}

resource "aws_iam_user" "test_iam_user" {
    name = "${local.iam_user_extension}_${var.environment}"
}

locals {
  iam_user_extension = "test_new_iam_user_from_terminal"
}