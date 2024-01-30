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
  default     = "lykins-demo-org"
}

variable "workspaces" {
  type = map(object({
    description       = optional(string, "Managed by Platform-Control-Repo")
    tags              = optional(list(string), null)
    project           = optional(string, "Default Project")
    auto_apply        = optional(bool, false)
    working_directory = optional(string, null)
    tfvars            = optional(map(string), {})
    vcs_repo = optional(object({
      identifier                 = optional(string, null)
      branch                     = optional(string, "main")
      oauth_token_id             = optional(string, null)
      github_app_installation_id = optional(string, null)
      tags_regex                 = optional(string, null)
    }))
  }))
  default = {}
}

variable "projects" {
  type    = list(string)
  default = []
}


# variable "client_id" {
#   description = "The client id of the service principal"
# }

# variable "client_secret" {
#   description = "The client secret of the service principal"
# }

# variable "subscription_id" {
#   description = "The subscription id of the service principal"
# }

# variable "tenant_id" {
#   description = "The tenant id of the service principal"
# }
