output "projects" {
  value = [
    for v in tfe_project.this : v.name
  ]
}
