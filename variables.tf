variable "organization" {
  default = "ProSkub"
}

variable "workspaces" {
  type = map(object({
  }))
  default = {}
}
