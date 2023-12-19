terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.51.0"
    }
  }
  backend "cloud" {
    hostname     = "app.terraform.io"
    organization = "ProSkub"
    workspaces {
      name = "platform-control-gs"
    }
  }
}


provider "tfe" {
}
