variable "virtualmachine_name" {
  type = string
}
variable "virtualmachine_description" {
  type = string
}
variable "project_id" {
  type = string
}
variable "image" {
  type = string
}
variable "flavor" {
  type = string
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