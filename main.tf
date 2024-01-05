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

provider "azuread" {
  tenant_id = "27662586-64fa-451e-96ef-0483c3c0a805"
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
    "location" = contains(["sandbox", "dev"], "${each.key}") ? "westus" : "eastus"
  }

  envvars = {
    "TFC_AZURE_RUN_CLIENT_ID" = var.arm_client_id
    "TFC_AZURE_PROVIDER_AUTH" = true
  }

  depends_on = [tfe_project.this]
}

resource "tfe_project" "this" {
  for_each     = toset(var.projects)
  name         = each.key
  organization = var.organization
}

resource "azuread_application_federated_identity_credential" "apply" {
  for_each = var.workspaces

  application_id = "/applications/4399ff91-c195-470d-84a7-985b251acf30"
  display_name   = "${each.key}-apply"
  description    = "Apply execution for ${each.key}"
  audiences      = ["api://AzureADTokenExchange"]
  issuer         = "https://app.terraform.io"
  subject        = "organization:lykins:project:${each.value.project}:workspace:${each.key}:run_phase:apply"
}

resource "azuread_application_federated_identity_credential" "plan" {
  for_each = var.workspaces

  application_id = "/applications/4399ff91-c195-470d-84a7-985b251acf30"
  display_name   = "${each.key}-plan"
  description    = "Plan execution for ${each.key}"
  audiences      = ["api://AzureADTokenExchange"]
  issuer         = "https://app.terraform.io"
  subject        = "organization:lykins:project:${each.value.project}:workspace:${each.key}:run_phase:plan"
}
