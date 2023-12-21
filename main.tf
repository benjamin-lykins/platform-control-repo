terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.44.1"
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

  depends_on = [tfe_project.this]
}

resource "tfe_project" "this" {
  for_each     = toset(var.projects)
  name         = each.key
  organization = var.organization

}
