variable "virtual_machine_name" {
  type = string
}
variable "virtual_machine_description" {
  type = string
}
variable "project_name" {
  type = string
}
variable "image" {
  type = string
}
variable "flavor" {
  type = string
}
variable "image_disk_constraints" {
  description = "Constraints that drive placement policy for the image disk"
  type = list(object({
    mandatory  = bool
    expression = string
  }))
  default = []
}

ariable "tags" {
  description = "Tags to apply to the virtual machine"
  type        = list(map(string))
  default     = []
}

variable "constraints" {
  description = "Placement constraints for the virtual machine"
  type = list(object({
    mandatory  = bool
    expression = string
  }))
  default = []
}

/**
 * vcfa_url
 * URL of the VCF-A (Aria Automation) endpoint.
 */
variable "vcfa_url" {
  type        = string
  description = "The VCFA URL: https://<FQDN>"
}

variable "vcfa_organization" {
  type        = string
  description = "The VCFA Organization"
}

/**
 * vcfa_refresh_token
 * Refresh token used for authentication to the VCF-A API.
 * Marked sensitive to avoid logging/output exposure.
 */
variable "vcfa_refresh_token" {
  type      = string
  sensitive = true
}

/**
 * insecure
 * Whether to skip SSL certificate verification when connecting
 * to the VCF-A API (typically true for lab environments).
 */
variable "insecure" {
  type    = bool
  default = true
}