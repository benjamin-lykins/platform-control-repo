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
    description       = optional(string, "Managed by Platform-Control-Repo")
    tags              = optional(list(string), null)
    project           = optional(string, "Default Project")
    auto_apply        = optional(bool, false)
    working_directory = optional(string, null)
    tfvars            = optional(map(string), {})
    envvars           = optional(map(string), {})
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

variable "azure-projects" {
  type    = list(string)
  default = []
}

variable "vsphere-projects" {
  type    = list(string)
  default = []
}
