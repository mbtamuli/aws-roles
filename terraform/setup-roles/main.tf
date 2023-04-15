terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.63"
    }
  }

  required_version = ">= 1.4.5"
}

provider "aws" {}

resource "aws_iam_user" "testuser" {
  name = var.name
  tags = var.tags
}

resource "aws_iam_access_key" "testuser" {
  user  = aws_iam_user.testuser.name
  count = (var.keys == true ? 1 : 0)
}