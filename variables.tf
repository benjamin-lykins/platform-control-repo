#------------------------------------------------------------------------------
# Provider
#------------------------------------------------------------------------------
variable "tfe_hostname" {
  type        = string
  description = "Hostname of TFC/TFE to use."
  default     = "app.terraform.io"
}

#------------------------------------------------------------------------------
# Module
#------------------------------------------------------------------------------
variable "organization" {
  type        = string
  description = "Name of Organization to create Workspace in."
  default     = "lykins"
}

variable "workspaces" {
  type = map(object({
    description = optional(string, "")
    tags        = optional(list(string), null)
    project     = optional(string, "Default")
    auto_apply  = optional(bool, false)
    vcs_repo = optional(object({
      identifier     = optional(string, "")
      branch         = optional(string, "main")
      oauth_token_id = optional(string, "")
      tags_regex     = optional(string, null)
    }))
  }))
  default = {}
}

variable "projects" {
  type    = list(string)
  default = []
}

variable "oauth_token_id" {
  type      = string
  sensitive = true
}


variable "client_id" {
  description = "The client id of the service principal"
}

variable "client_secret" {
  description = "The client secret of the service principal"
}

variable "subscription_id" {
  description = "The subscription id of the service principal"
}

variable "tenant_id" {
  description = "The tenant id of the service principal"
}
