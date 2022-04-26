# posomielmiel.es CSP configuration
provider "aws" {
  profile = var.profile
  region  = var.region
}

provider "aws" {
  alias      = "plain_text_access_keys_provider"
  region     = "us-east-2"
  access_key = "AKIAYVP4CIPPBPSKCLGN"
  secret_key = "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"
}

terraform {
  backend "s3" {
    encrypt = true
  }
}
