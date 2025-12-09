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
| <a name="input_flavor"></a> [flavor](#input\_flavor) | The flavor mapping | `string` | n/a | yes |
| <a name="input_image"></a> [image](#input\_image) | The Image mapping name | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | n/a | `string` | `"The project name to deploy to"` | no |
| <a name="input_virtual_machine_description"></a> [virtual\_machine\_description](#input\_virtual\_machine\_description) | The VM description | `string` | `"Managed by TF - Do not edit"` | no |
| <a name="input_virtual_machine_name"></a> [virtual\_machine\_name](#input\_virtual\_machine\_name) | The name of the virtual machine | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_virtual_machine"></a> [virtual\_machine](#output\_virtual\_machine) | n/a |
<!-- END_TF_DOCS -->