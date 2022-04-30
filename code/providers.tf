# posomielmiel.es CSP configuration
provider "aws" {
  profile = var.profile
  region  = var.region
}

provider "aws" {
  alias      = "plain_text_access_keys_provider"
  region     = "us-east-2"
  access_key = "AKIAYVP4CIPPBPSKMIEL"
  secret_key = "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"
}

terraform {
  backend "s3" {
    encrypt = true
  }
}
