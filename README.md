# terraform-vra-vmapps-vra-machine

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.9 |
| <a name="requirement_vra"></a> [vra](#requirement\_vra) | >= 0.15.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vra"></a> [vra](#provider\_vra) | >= 0.15.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vra_machine.this](https://registry.terraform.io/providers/vmware/vra/latest/docs/resources/machine) | resource |
| [vra_project.this](https://registry.terraform.io/providers/vmware/vra/latest/docs/data-sources/project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_boot_config_content"></a> [boot\_config\_content](#input\_boot\_config\_content) | Optional cloud-init boot configuration content | `string` | `null` | no |
| <a name="input_constraints"></a> [constraints](#input\_constraints) | Placement constraints for the virtual machine | `list(map(string))` | `[]` | no |
| <a name="input_disks"></a> [disks](#input\_disks) | List of block device IDs to attach as disks | `list(string)` | `[]` | no |
| <a name="input_flavor"></a> [flavor](#input\_flavor) | Flavor name or ID used for the virtual machine | `string` | n/a | yes |
| <a name="input_image"></a> [image](#input\_image) | Image name or ID used for the virtual machine | `string` | n/a | yes |
| <a name="input_image_disk_constraints"></a> [image\_disk\_constraints](#input\_image\_disk\_constraints) | Image disk constraints as key/value pairs | `list(map(string))` | `[]` | no |
| <a name="input_nics"></a> [nics](#input\_nics) | List of network IDs to attach as NICs | `list(string)` | `[]` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Name of the vRA project to deploy the machine into | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to the virtual machine | `list(map(string))` | `[]` | no |
| <a name="input_virtual_machine_description"></a> [virtual\_machine\_description](#input\_virtual\_machine\_description) | Description of the virtual machine | `string` | `null` | no |
| <a name="input_virtual_machine_name"></a> [virtual\_machine\_name](#input\_virtual\_machine\_name) | Name of the virtual machine | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | ID of the vRA machine |
| <a name="output_machine"></a> [machine](#output\_machine) | Full vRA machine resource (all attributes) |
| <a name="output_name"></a> [name](#output\_name) | Name of the created machine |
| <a name="output_project_id"></a> [project\_id](#output\_project\_id) | Project ID the machine belongs to |
| <a name="output_virtual_machine"></a> [virtual\_machine](#output\_virtual\_machine) | n/a |
<!-- END_TF_DOCS -->