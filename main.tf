data "vra_project" "this" {
  name = var.project_name
}

resource "vra_machine" "this" {
  name        = var.virtual_machine_name
  description = var.virtual_machine_description
  project_id  = data.vra_project.this.id
  image       = var.image
  flavor      = var.flavor
}