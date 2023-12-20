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
    tags        = optional(list(string), [""])
    project     = optional(string, "")
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
