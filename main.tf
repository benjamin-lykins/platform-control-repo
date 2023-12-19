terraform {
  cloud {
    organization = "ProSkub"
  }
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.44.1"
    }
  }
}

provider "tfe" {
  hostname     = "app.terraform.io"
  organization = var.organization
}

variable "organization" {
  default = "ProSkub"
}

module "workspacer" {
  source  = "alexbasista/workspacer/tfe"
  version = "0.9.0"

  organization   = var.organization
  workspace_name = "module-workspacer-basic-test"
  workspace_desc = "Created by Terraform Workspacer module."
  workspace_tags = ["module-ci", "test", "aws"]
}
