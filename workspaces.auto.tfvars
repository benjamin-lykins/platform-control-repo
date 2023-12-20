workspaces = {
  "corp-sailpoint-dev-compute" = {
    tags    = ["sailpoint", "development"]
    project = "sailpoint"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"
    }
  }
  "corp-sailpoint-dev-network" = {
    tags    = ["sailpoint", "development"]
    project = "sailpoint"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"

    }
  }
  "corp-sailpoint-dev-storage" = {
    tags    = ["sailpoint", "development"]
    project = "sailpoint"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"

    }
  }
  "corp-sailpoint-prod-compute" = {
    tags    = ["sailpoint", "production"]
    project = "sailpoint"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"

    }
  }
  "corp-sailpoint-prod-network" = {
    tags    = ["sailpoint", "production"]
    project = "sailpoint"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"
    }
  }
  "corp-sailpoint-prod-storage" = {
    tags    = ["sailpoint", "production"]
    project = "sailpoint"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"
    }
  }
  "corp-linux-prod-compute" = {
    tags    = ["linux", "production"]
    project = "linux"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-1"
    }
  }
  "corp-linux-prod-network" = {
    tags    = ["linux", "production"]
    project = "linux"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-1"
    }
  }
  "corp-linux-prod-storage" = {
    tags    = ["linux", "production"]
    project = "linux"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-1"
    }
  }
  "corp-linux-dev-compute" = {
    tags    = ["linux", "development"]
    project = "linux"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-1"
    }
  }
  "corp-linux-dev-network" = {
    tags    = ["linux", "development"]
    project = "linux"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-1"
    }
  }
  "corp-linux-dev-storage" = {
    tags    = ["linux", "development"]
    project = "linux"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-1"
    }
  }
  #   "corp-windows-prod-compute" = {
  #     tags    = ["windows", "production"]
  #     project = "windows"
  #     vcs_repo = {
  #       identifier = "benjamin-lykins/demo-terraform-repo-2"
  #     }
  #   }
  #   "corp-windows-prod-network" = {
  #     tags    = ["windows", "production"]
  #     project = "windows"
  #     vcs_repo = {
  #       identifier = "benjamin-lykins/demo-terraform-repo-2"
  #     }
  #   }
  #   "corp-windows-prod-storage" = {
  #     tags    = ["windows", "production"]
  #     project = "windows"
  #     vcs_repo = {
  #       identifier = "benjamin-lykins/demo-terraform-repo-2"
  #     }
  #   }
  #   "corp-windows-dev-compute" = {
  #     tags    = ["windows", "development"]
  #     project = "windows"
  #     vcs_repo = {
  #       identifier = "benjamin-lykins/demo-terraform-repo-2"
  #     }
  #   }
  #   "corp-windows-dev-network" = {
  #     tags    = ["windows", "development"]
  #     project = "windows"
  #     vcs_repo = {
  #       identifier = "benjamin-lykins/demo-terraform-repo-2"
  #     }
  #   }
  #   "corp-windows-dev-storage" = {
  #     tags    = ["windows", "development"]
  #     project = "windows"
  #     vcs_repo = {
  #       identifier = "benjamin-lykins/demo-terraform-repo-2"
  #     }
  #   }
}

projects = ["sailpoint", "linux"] //add windows project
