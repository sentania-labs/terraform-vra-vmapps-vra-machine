data "vra_project" "this" {
  name = var.project_name
}

resource "vra_machine" "this" {
  name        = var.virtual_machine_name
  description = var.virtual_machine_description
  project_id  = data.vra_project.this.id
  image       = var.image
  image_ref   = var.image_ref
  flavor      = var.flavor
  deployment_id = var.deployment_id
  
  dynamic "image_disk_constraints" {
    for_each = var.image_disk_constraints
    content {
      mandatory  = image_disk_constraints.value.mandatory
      expression = image_disk_constraints.value.expression
    }
  }

  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }

  dynamic "constraints" {
    for_each = var.constraints
    content {
      mandatory  = constraints.value.mandatory
      expression = constraints.value.expression
    }
  }

  dynamic "disks" {
    for_each = var.disks
    content {
      block_device_id = disks.value
    }
  }

  dynamic "nics" {
    for_each = var.nics
    content {
      network_id = nics.value
    }
  }

  dynamic "boot_config" {
    for_each = var.boot_config_content != null ? [var.boot_config_content] : []

    content {
      content = boot_config.value
    }
  }
}