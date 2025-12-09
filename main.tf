data "vra_project" "this" {
  name = var.project_name
}

resource "vra_machine" "this" {
  name        = var.virtual_machine_name
  description = var.virtual_machine_description
  project_id  = data.vra_project.this.id
  image       = var.image
  flavor      = var.flavor

  image_disk_constraints = var.image_disk_constraints
  tags = var.tags
  constraints = var.constraints

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