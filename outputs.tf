output "virtual_machine" {
  value = {
    "name"   = vra_machine.this.name,
    "id"     = vra_machine.this.id,
    "ipaddr" = vra_machine.this.address
  }
}
