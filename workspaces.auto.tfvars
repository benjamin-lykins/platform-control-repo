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
    tags    = ["common", "development", "component:network"]
    project = "multi"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-azure-multi-vnet"
    }
  }
  "corp-multi-prod-vnet" = {
    tags    = ["common", "production", "component:network"]
    project = "multi"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-azure-multi-vnet"
    }
  }
  "corp-multi-dev-compute" = {
    tags    = ["common", "development", "component:compute"]
    project = "multi"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-azure-multi-compute"
    }
  }
  "corp-multi-prod-compute" = {
    tags    = ["common", "production", "component:compute"]
    project = "multi"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-azure-multi-compute"
    }
  }
  "demo-azure-static" = {
    tags    = ["authentication"]
    project = "authentication"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-azure-static"
    }
  }
  "demo-azure-dynamic" = {
    tags    = ["common"]
    project = "authentication"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-azure-dynamic"
    }
  }
}

projects = ["mono", "multi", "authentication"]
