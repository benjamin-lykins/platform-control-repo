module "workspacer" {
  source  = "alexbasista/workspacer/tfe"
  version = "0.9.0"

  for_each = var.workspaces

  organization   = var.organization
  workspace_name = each.key
  workspace_desc = "Created by Terraform Workspacer module."
  workspace_tags = ["module-ci", "test", "aws"]

  envvars = {
    AWS_ACCESS_KEY_ID = "TH1SISNOTAREAL@CCESSKEY"
  }

  envvars_sensitive = {
    AWS_SECRET_ACCESS_KEY = "THISI$NOTAREALSECRETKEY123!@#"
  }

  team_access = {
    "dev-team-test"     = "read"
    "release-team-test" = "write"
  }
  depends_on = [tfe_team.dev-team-test, tfe_team.release-team-test]
}

resource "tfe_team" "dev-team-test" {
  name         = "dev-team-test"
  organization = var.organization
}

resource "tfe_team" "release-team-test" {
  name         = "release-team-test"
  organization = var.organization
}
