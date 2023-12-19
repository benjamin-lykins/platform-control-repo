module "workspacer" {
  source  = "alexbasista/workspacer/tfe"
  version = "0.9.0"

  organization   = var.organization
  workspace_name = "test"
  workspace_desc = "Created by Terraform Workspacer module."
  workspace_tags = ["module-ci", "test", "aws"]
}
