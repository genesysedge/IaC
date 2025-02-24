# Providers
terraform {
  required_providers {
    genesyscloud = {
      source  = "registry.terraform.io/mypurecloud/genesyscloud"
      version = "1.55.0"
    }
  }
}

provider "genesyscloud" {
  oauthclient_id = var.oauthclient_id
  oauthclient_secret = var.oauthclient_secret
  aws_region = var.aws_region
}
