terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.51.0"
    }
  }
  backend "remote" {
    hostname = "app.terraform.io"
    workspaces {
      name         = "platform-control-gs"
      organization = var.organization
    }
  }
}


provider "tfe" {
  hostname     = "app.terraform.io"
  organization = var.organization
}
