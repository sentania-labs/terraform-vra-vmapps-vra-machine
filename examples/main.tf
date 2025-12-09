provider "vra" {
  url           = var.vcfa_url
  organization  = var.vcfa_organization
  refresh_token = var.vcfa_refresh_token
  insecure      = var.insecure
}

module "machine" {
  source                     = "../../"
  virtualmachine_name        = var.virtual_machine_name
  virtualmachine_description = var.virtual_machine_description
  project_id                 = var.project_name
  image                      = var.image
  flavor                     = var.flavor
  constraints                = var.constraints
  image_disk_constraints     = var.image_disk_constraints
  tags                       = var.tags
}
