terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.44.1"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.0"
    }
  }
  cloud {
    workspaces {
      name = "platform-control-gs"
    }
    hostname     = "app.terraform.io"
    organization = "lykins"
  }
}

provider "tfe" {
  hostname = var.tfe_hostname
}

variable "client_id" {
  description = "The client id of the service principal"
}

variable "client_secret" {
  description = "The client secret of the service principal"
}

variable "subscription_id" {
  description = "The subscription id of the service principal"
}

variable "tenant_id" {
  description = "The tenant id of the service principal"
}

module "workspacer" {
  source  = "alexbasista/workspacer/tfe"
  version = "0.9.0"

  for_each = var.workspaces

  organization   = var.organization
  workspace_name = each.key
  workspace_desc = each.value.description
  workspace_tags = each.value.tags
  project_name   = each.value.project
  auto_apply     = contains(["sandbox", "dev"], "${each.key}") ? true : false
  force_delete   = true //only for easy cleanup in demo

  vcs_repo = {
    identifier     = each.value.vcs_repo.identifier
    branch         = contains(["sandbox", "dev"], "${each.key}") ? "develop" : "main"
    oauth_token_id = var.oauth_token_id
  }

  tfvars = {
    "location"        = contains(["sandbox", "dev"], "${each.key}") ? "westus" : "eastus"
    "client_id"       = var.client_id
    "client_secret"   = var.client_secret
    "subscription_id" = var.subscription_id
    "tenant_id"       = var.tenant_id
  }
  depends_on = [tfe_project.this]
}

resource "tfe_project" "this" {
  for_each     = toset(var.projects)
  name         = each.key
  organization = var.organization
}
