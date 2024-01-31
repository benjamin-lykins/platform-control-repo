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
  "azure-shared-nonprod",
  "azure-shared-prod",
  "azure-nonprod",
  "azure-prod",
  "vsphere-shared",
  "vsphere-ctc-nonprod",
  "vsphere-ctc-prod",
  "vsphere-ctc-vmcod-nonprod",
  "vsphere-ctc-vmcod-prod",
  "vsphere-slough-nonprod",
  "vsphere-slough-prod",
  "vsphere-slough-vmcod-nonprod",
  "vsphere-slough-vmcod-prod"
]
