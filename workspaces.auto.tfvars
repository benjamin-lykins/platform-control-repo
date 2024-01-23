workspaces = {
  "corp-mono-dev" = {
    tags    = ["common", "development"]
    project = "mono"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-azure-mono"
    }
  }
}

projects = ["mono", "multi", "authentication"]
