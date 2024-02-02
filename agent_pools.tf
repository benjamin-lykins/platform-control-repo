resource "tfe_agent_pool" "this" {
  for_each     = toset(var.vsphere-projects)
  name         = each.value
  organization = var.organization
}

resource "tfe_agent_token" "this" {
  for_each      = toset(var.vsphere-projects)
  agent_pool_id = tfe_agent_pool.this[each.value].id
  description   = "Agent Token for ${each.value} project."
}
