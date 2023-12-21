workspaces = {
  "corp-mono-dev" = {
    tags    = ["common", "development"]
    project = "mono"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-azure-mono"
    }
  }
  "corp-mono-prod" = {
    tags    = ["common", "production"]
    project = "mono"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-azure-mono"
    }
  }
  "corp-multi-dev-vnet" = {
    tags    = ["common", "development"]
    project = "multi"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"
    }
  }
  "corp-multi-prod-vnet" = {
    tags    = ["common", "production"]
    project = "multi"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"
    }
  }
  "corp-multi-dev-compute" = {
    tags    = ["common", "development", "component:compute"]
    project = "multi"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"
    }
  }
  "corp-multi-prod-compute" = {
    tags    = ["common", "production", "component:compute"]
    project = "multi"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"
    }
  }
}

projects = ["mono", "multi"]
