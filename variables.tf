variable "project_name" {
  description = "Name of the vRA project to deploy the machine into"
  type        = string
}

variable "virtual_machine_name" {
  description = "Name of the virtual machine"
  type        = string
}

variable "virtual_machine_description" {
  description = "Description of the virtual machine"
  type        = string
  default     = null
}

variable "image" {
  description = "Image name or ID used for the virtual machine"
  type        = string
}

variable "flavor" {
  description = "Flavor name or ID used for the virtual machine"
  type        = string
}

variable "image_disk_constraints" {
  description = "Image disk constraints as key/value pairs"
  type        = list(map(string))
  default     = []
}

variable "tags" {
  description = "Tags to apply to the virtual machine"
  type        = list(map(string))
  default     = []
}

variable "constraints" {
  description = "Placement constraints for the virtual machine"
  type        = list(map(string))
  default     = []
}

variable "disks" {
  description = "List of block device IDs to attach as disks"
  type        = list(string)
  default     = []
}

variable "nics" {
  description = "List of network IDs to attach as NICs"
  type        = list(string)
  default     = []
}

variable "boot_config_content" {
  description = "Optional cloud-init boot configuration content"
  type        = string
  default     = null
}
