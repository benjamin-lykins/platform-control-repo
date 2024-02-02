// Global Variable Sets

resource "tfe_variable_set" "global_azure" {
  name         = "azure-global-vs"
  description  = "TJX Azure Global Variable Set."
  organization = var.organization
}

resource "tfe_variable" "azure_dynamic_provider_auth" {
  category        = "env"
  key             = "TFC_AZURE_PROVIDER_AUTH"
  value           = true
  variable_set_id = tfe_variable_set.global_azure.id
}

resource "tfe_variable_set" "global_vsphere" {
  name         = "vsphere-vs"
  description  = "TJX vSphere Global Variable Set."
  organization = var.organization
}

// Azure Subscription Variable Sets

resource "tfe_variable_set" "azure_nonprod" {
  name         = "azure-nonprod-vs"
  description  = "TJX Azure NonProd Subscription Variable Set."
  organization = var.organization
}

resource "tfe_variable" "tjx_subscription_name_nonprod" {
  category        = "terraform"
  key             = "tjx_subscription_name"
  value           = "nonprod"
  variable_set_id = tfe_variable_set.azure_nonprod.id
}

resource "tfe_variable_set" "azure_prod" {
  name         = "azure-prod-vs"
  description  = "TJX Azure NonProd Subscription Variable Set."
  organization = var.organization
}

resource "tfe_variable" "tjx_subscription_name_prod" {
  category        = "terraform"
  key             = "tjx_subscription_name"
  value           = "prod"
  variable_set_id = tfe_variable_set.azure_prod.id
}

// vSphere Variable Sets

resource "tfe_variable_set" "vsphere_ctc_nonprod" {
  name         = "vsphere-ctc-nonprod-vs"
  description  = "TJX vSphere CTC NonProd Variable Set."
  organization = var.organization
}

resource "tfe_variable_set" "vsphere_ctc_prod" {
  name         = "vsphere-ctc-nonprod-vs"
  description  = "TJX vSphere CTC Prod Variable Set."
  organization = var.organization
}


resource "tfe_project_variable_set" "global_azure" {
  for_each = toset(var.azure-projects)

  variable_set_id = tfe_variable_set.global_azure.id
  project_id      = tfe_project.this[each.key].id
}
