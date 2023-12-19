resource "tfe_variable" "name" {

  for_each = {
    workspaces = {
      "test"  = {}
      "test2" = {}
    }

  }
  workspace_id = "ws-zSmCWyTsJu5Sfqcw"
  category     = "terraform"
  key          = each.key
  hcl          = substr(replace(jsonencode(each.value), "/(\".*?\"):/", "$1 = "), 0, 1) == "[" || substr(replace(jsonencode(each.value), "/(\".*?\"):/", "$1 = "), 0, 1) == "{" ? true : false # https://github.com/hashicorp/terraform-provider-tfe/issues/188
  description  = "Managed via Code"
}
