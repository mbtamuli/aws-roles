terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.63"
    }
  }

  required_version = ">= 1.4.5"
}

locals {
  name = "test"
}

module "management-role" {
  providers = {
    aws = aws.management
  }

  source   = "./setup-roles"
  name     = local.name
  api_keys = true

  tags = {
    Environment = "management"
  }
}


# module "sandbox-dev-role" {
#   providers = {
#     aws = aws.sandbox-dev
#   }
#
#   source   = "./setup-roles"
#   name     = local.name
#   api_keys = false
#
#   tags = {
#     Environment = "sandbox-dev"
#   }
# }
#
# module "sandbox-prod-role" {
#   providers = {
#     aws = aws.sandbox-prod
#   }
#
#   source   = "./setup-roles"
#   name     = local.name
#   api_keys = false
#
#   tags = {
#     Environment = "sandbox-prod"
#   }
# }
