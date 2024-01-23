workspaces = {
  test-1 = {
    tags = ["test"]
    vcs_repo = {
      identifier = "benjamin-lykins/demo-azure-mono"
    }
  }
  demo-application1-sandbox = {
    tags = ["application1", "sandbox"]
    vcs_repo = {
      identifier = "benjamin-lykins/demo-azure-common"
      branch     = "sandbox"
    }
  }
  demo-application1-nonprod = {
    tags = ["application1", "sandbox"]
    vcs_repo = {
      identifier = "benjamin-lykins/demo-azure-common"
      branch     = "nonprod"
    }
  }
  demo-application1-prod = {
    tags = ["application1", "sandbox"]
    vcs_repo = {
      identifier = "benjamin-lykins/demo-azure-common"
      branch     = "prod"
    }
  }
  demo-application2-sandbox = {
    tags = ["application2", "sandbox"]
    vcs_repo = {
      identifier = "benjamin-lykins/demo-azure-common"
      branch     = "sandbox"
    }
  }
  demo-application2-nonprod = {
    tags = ["application2", "sandbox"]
    vcs_repo = {
      identifier = "benjamin-lykins/demo-azure-common"
      branch     = "nonprod"
    }
  }
  demo-application2-prod = {
    tags = ["application2", "sandbox"]
    vcs_repo = {
      identifier = "benjamin-lykins/demo-azure-common"
      branch     = "prod"
    }
  }
}

projects = ["application1", "application2"]
