resource "tfe_agent_pool" "vsphere_ctc_prod" {
  name         = "vsphere-ctc-prod-agent-pool"
  organization = var.organization
}

resource "tfe_agent_pool" "vsphere_ctc_nonprod" {
  name         = "vsphere-ctc-nonprod-agent-pool"
  organization = var.organization
}
