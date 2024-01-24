module "workspacer" {
  source  = "alexbasista/workspacer/tfe"
  version = "0.9.0"

  for_each = var.workspaces

  organization      = var.organization
  workspace_name    = each.key
  workspace_desc    = each.value.description == "" ? null : each.value.description
  workspace_tags    = each.value.tags == "" ? null : each.value.tags
  project_name      = each.value.project == "" ? "Default" : each.value.project
  auto_apply        = contains(["sandbox", "nonprod"], "${each.key}") ? true : false
  force_delete      = true //only for easy cleanup in demo
  working_directory = each.value.working_directory == null ? null : each.value.working_directory

  vcs_repo = {
    identifier     = each.value.vcs_repo.identifier
    branch         = "main"
    oauth_token_id = var.oauth_token_id
  }
  depends_on = [tfe_project.this]
}

resource "tfe_project" "this" {
  for_each     = toset(var.projects)
  name         = each.key
  organization = var.organization
}
