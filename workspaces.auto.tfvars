workspaces = {
  "corp-sailpoint-dev-db" = {
    tags    = ["sailpoint", "development", "db"]
    project = "sailpoint"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"
    }
  }
  "corp-sailpoint-dev-frontend" = {
    tags    = ["sailpoint", "development", "frontend"]
    project = "sailpoint"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"

    }
  }
  "corp-sailpoint-dev-backend" = {
    tags    = ["sailpoint", "development", "backend"]
    project = "sailpoint"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"

    }
  }
  "corp-sailpoint-prod-db" = {
    tags    = ["sailpoint", "production", "db"]
    project = "sailpoint"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"

    }
  }
  "corp-sailpoint-prod-frontend" = {
    tags    = ["sailpoint", "production", "frontend"]
    project = "sailpoint"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"
    }
  }
  "corp-sailpoint-prod-backend" = {
    tags    = ["sailpoint", "production", "backend"]
    project = "sailpoint"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-2"
    }
  }
  "corp-payment-prod-compute" = {
    tags    = ["payment", "production"]
    project = "payment"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-1"
    }
  }
  "corp-payment-prod-network" = {
    tags    = ["payment", "production"]
    project = "payment"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-1"
    }
  }
  "corp-payment-prod-storage" = {
    tags    = ["payment", "production"]
    project = "payment"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-1"
    }
  }
  "corp-payment-dev-compute" = {
    tags    = ["payment", "development"]
    project = "payment"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-1"
    }
  }
  "corp-payment-dev-network" = {
    tags    = ["payment", "development"]
    project = "payment"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-1"
    }
  }
  "corp-payment-dev-storage" = {
    tags    = ["payment", "development"]
    project = "payment"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-terraform-repo-1"
    }
  }
  #   "corp-shipping-prod-compute" = {
  #     tags    = ["shipping", "production"]
  #     project = "shipping"
  #     vcs_repo = {
  #       identifier = "benjamin-lykins/demo-terraform-repo-2"
  #     }
  #   }
  #   "corp-shipping-prod-network" = {
  #     tags    = ["shipping", "production"]
  #     project = "shipping"
  #     vcs_repo = {
  #       identifier = "benjamin-lykins/demo-terraform-repo-2"
  #     }
  #   }
  #   "corp-shipping-prod-storage" = {
  #     tags    = ["shipping", "production"]
  #     project = "shipping"
  #     vcs_repo = {
  #       identifier = "benjamin-lykins/demo-terraform-repo-2"
  #     }
  #   }
  #   "corp-shipping-dev-compute" = {
  #     tags    = ["shipping", "development"]
  #     project = "shipping"
  #     vcs_repo = {
  #       identifier = "benjamin-lykins/demo-terraform-repo-2"
  #     }
  #   }
  #   "corp-shipping-dev-network" = {
  #     tags    = ["shipping", "development"]
  #     project = "shipping"
  #     vcs_repo = {
  #       identifier = "benjamin-lykins/demo-terraform-repo-2"
  #     }
  #   }
  #   "corp-shipping-dev-storage" = {
  #     tags    = ["shipping", "development"]
  #     project = "shipping"
  #     vcs_repo = {
  #       identifier = "benjamin-lykins/demo-terraform-repo-2"
  #     }
  #   }
}

projects = ["sailpoint", "payment"] //add shipping project
