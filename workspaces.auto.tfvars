workspaces = {
  corp-application1-nonprod-qa = {
    tags              = ["application1", "nonprod"]
    working_directory = "/application1/nonprod"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-azure-common"
    }
    tfvars = {
      environment = "nonprod"
    }
    envvars = {
      TFC_AZURE_PROVIDER_AUTH = true
      TFC_AZURE_RUN_CLIENT_ID = "corp-application1-nonprod-qa"
    }
  }
}

projects = ["corp-general", "azure-shared", "vsphere-shared"]
