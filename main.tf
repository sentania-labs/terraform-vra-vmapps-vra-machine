data "vra_project" "this" {
  name = var.project_name
}

resource "vra_machine" "this" {
  name        = var.virtualmachine_name
  description = var.virtualmachine_description
  project_id  = data.vra_project.this.id
  image       = var.image
  flavor      = var.flavor
}