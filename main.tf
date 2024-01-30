module "workspacer" {
  source  = "app.terraform.io/lykins-demo-org/workspacer/tfe"
  version = "~> 1.0"

  for_each = var.workspaces

  organization      = var.organization
  workspace_name    = each.key
  workspace_desc    = each.value.description == "" ? null : each.value.description
  workspace_tags    = each.value.tags == "" ? null : each.value.tags
  project_name      = each.value.project == "" ? "Default" : each.value.project
  auto_apply        = each.value.auto_apply
  force_delete      = true //only for easy cleanup in demo
  working_directory = each.value.working_directory == null ? null : each.value.working_directory

  tfvars = each.value.tfvars

  vcs_repo = {
    identifier                 = each.value.vcs_repo.identifier
    branch                     = "main"
    github_app_installation_id = "benjamin-lykins"
  }
  depends_on = [tfe_project.this]
}

resource "tfe_project" "this" {
  for_each     = toset(var.projects)
  name         = each.key
  organization = var.organization
}
