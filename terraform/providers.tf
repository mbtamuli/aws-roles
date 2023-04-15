provider "aws" {
  alias                    = "management"
  profile                  = "management"
  shared_config_files      = ["./.aws/config"]
  shared_credentials_files = ["./.aws/credentials"]
}

provider "aws" {
  alias                    = "sandbox-prod"
  profile                  = "sandbox-prod"
  shared_config_files      = ["./.aws/config"]
  shared_credentials_files = ["./.aws/credentials"]
}

provider "aws" {
  alias                    = "sandbox-dev"
  profile                  = "sandbox-dev"
  shared_config_files      = ["./.aws/config"]
  shared_credentials_files = ["./.aws/credentials"]
}