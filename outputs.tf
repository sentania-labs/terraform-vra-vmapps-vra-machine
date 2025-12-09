output "virtual_machine" {
  value = {
    "name"   = vra_machine.this.name,
    "id"     = vra_machine.this.id,
    "ipaddr" = vra_machine.this.address
  }
}
output "id" {
  description = "ID of the vRA machine"
  value       = vra_machine.this.id
}

output "name" {
  description = "Name of the created machine"
  value       = vra_machine.this.name
}

output "project_id" {
  description = "Project ID the machine belongs to"
  value       = data.vra_project.this.id
}

output "machine" {
  description = "Full vRA machine resource (all attributes)"
  value       = vra_machine.this
}
