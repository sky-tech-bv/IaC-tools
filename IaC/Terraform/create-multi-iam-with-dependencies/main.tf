variable "users" {
  default = {
    bob:{
      country:"US",
      age:43
    },
    john:{
      country:"UK",
      age:25
    },
    josh:{
      country:"EU",
      age:33
    }
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  # VERSION IS NOT NEEDED HERE
}

resource "aws_iam_user" "test_iam_users" {
  # count = length(var.names)
  # name  = var.names[count.index]
  for_each = var.users
  name = each.key
  tags = {
    country: each.value.country,
    age: each.value.age
  }
  
}