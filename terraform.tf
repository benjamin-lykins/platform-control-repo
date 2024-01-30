terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.44.1"
    }
  }
  cloud {
    workspaces {
      name = "platform-control-ws"
    }
    hostname     = "app.terraform.io"
    organization = "lykins"
  }
}

provider "tfe" {
  hostname = var.tfe_hostname
}
