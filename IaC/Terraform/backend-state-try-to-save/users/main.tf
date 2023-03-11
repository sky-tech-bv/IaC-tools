# variable "application_name" {
#   default = "backend-state-try-to-save"
# }

# variable "project_name" {
#   default = "users"
# }

# variable "environment" {
#   default = "dev"
# }

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket         = "dev-applications-backend-state-abcdf"
    # key            = "${var.application_name}-${var.project_name}-${var.environment}"
    key = "dev/backend-state-try-to-save/users/backend-state"
    region         = "us-east-1"
    dynamodb_table = "dev_application_locks"
    encrypt        = true
  }
}


provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "test_iam_user" {
  name = "${terraform.workspace}_new_iam_user_abc"
}

