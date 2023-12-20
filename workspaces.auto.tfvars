workspaces = {
  "corp-sailpoint-dev-compute" = {
    tags       = ["sailpoint", "development"]
    project    = "sailpoint"
    auto_apply = true
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"
      branch     = "develop"
    }
  }
  "corp-sailpoint-dev-network" = {
    tags       = ["sailpoint", "development"]
    project    = "sailpoint"
    auto_apply = true
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"
      branch     = "develop"
    }
  }
  "corp-sailpoint-dev-storage" = {
    tags       = ["sailpoint", "development"]
    project    = "sailpoint"
    auto_apply = true
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"
      branch     = "develop"
    }
  }
  "corp-sailpoint-prod-compute" = {
    tags    = ["sailpoint", "production"]
    project = "sailpoint"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"
      branch     = "main"
    }
  }
  "corp-sailpoint-prod-network" = {
    tags    = ["sailpoint", "production"]
    project = "sailpoint"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"
      branch     = "main"
    }
  }
  "corp-sailpoint-prod-storage" = {
    tags    = ["sailpoint", "production"]
    project = "sailpoint"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"
      branch     = "main"
    }
  }
  "corp-linux-prod-compute" = {
    tags    = ["linux", "production"]
    project = "linux"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-1"
      branch     = "main"
    }
  }
  "corp-linux-prod-network" = {
    tags    = ["linux", "production"]
    project = "linux"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-1"
      branch     = "main"
    }
  }
  "corp-linux-prod-storage" = {
    tags    = ["linux", "production"]
    project = "linux"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-1"
      branch     = "main"
    }
  }
  "corp-linux-dev-compute" = {
    tags       = ["linux", "development"]
    project    = "linux"
    auto_apply = true
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-1"
      branch     = "develop"
    }
  }
  "corp-linux-dev-network" = {
    tags       = ["linux", "development"]
    project    = "linux"
    auto_apply = true
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-1"
      branch     = "develop"
    }
  }
  "corp-linux-dev-storage" = {
    tags       = ["linux", "development"]
    project    = "linux"
    auto_apply = true
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-1"
      branch     = "develop"
    }
  }
  "corp-windows-prod-compute" = {
    tags    = ["windows", "production"]
    project = "windows"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"
      branch     = "main"
    }
  }
  "corp-windows-prod-network" = {
    tags    = ["windows", "production"]
    project = "windows"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"
      branch     = "main"
    }
  }
  "corp-windows-prod-storage" = {
    tags    = ["windows", "production"]
    project = "windows"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"
      branch     = "main"
    }
  }
  "corp-windows-dev-compute" = {
    tags       = ["windows", "development"]
    project    = "windows"
    auto_apply = true
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"
      branch     = "develop"
    }
  }
  "corp-windows-dev-network" = {
    tags       = ["windows", "development"]
    project    = "windows"
    auto_apply = true
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"
      branch     = "develop"
    }
  }
  "corp-windows-dev-storage" = {
    tags       = ["windows", "development"]
    project    = "windows"
    auto_apply = true
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"
      branch     = "develop"
    }
  }
}

projects = ["sailpoint", "linux", "windows"]
