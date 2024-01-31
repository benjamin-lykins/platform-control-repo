workspaces = {
  corp-application1-nonprod-qa = {
    tags              = ["application1", "nonprod"]
    working_directory = "/application1/nonprod"
    vcs_repo = {
      identifier = "benjamin-lykins/demo-azure-common"
    }
  }
}

projects = [
  "new",
  "old",
  "1",
  "2"
]
