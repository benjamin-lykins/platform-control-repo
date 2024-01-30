workspaces = {
  corp-application1-nonprod = {
    tags              = ["application1", "nonprod"]
    working_directory = "/application1/nonprod"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-azure-common"
    }
  }

}

projects = ["corp-general", "azure-shared", "vsphere-shared"]
