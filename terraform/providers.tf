provider "aws" {
  alias                    = "management"
  profile                  = "management"
  shared_config_files      = ["/Users/mbtamuli/workspace/personal/aws-roles/terraform/.aws/config"]
  # shared_credentials_files = ["/Users/mbtamuli/workspace/personal/aws-roles/terraform/.aws/credentials"]
}

provider "aws" {
  alias                    = "sandbox-prod"
  profile                  = "sandbox-prod"
  shared_config_files      = ["/Users/mbtamuli/workspace/personal/aws-roles/terraform/.aws/config"]
  # shared_credentials_files = ["/Users/mbtamuli/workspace/personal/aws-roles/terraform/.aws/credentials"]
}

provider "aws" {
  alias                    = "sandbox-dev"
  profile                  = "sandbox-dev"
  shared_config_files      = ["/Users/mbtamuli/workspace/personal/aws-roles/terraform/.aws/config"]
  # shared_credentials_files = ["/Users/mbtamuli/workspace/personal/aws-roles/terraform/.aws/credentials"]
}