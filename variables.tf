variable "virtual_machine_name" {
  type        = string
  description = "The name of the virtual machine"
}
variable "virtual_machine_description" {
  type        = string
  description = "The VM description"
  default     = "Managed by TF - Do not edit"
}
variable "project_name" {
  type    = string
  default = "The project name to deploy to"
}
variable "image" {
  type        = string
  description = "The Image mapping name"
}
variable "flavor" {
  type        = string
  description = "The flavor mapping"
}