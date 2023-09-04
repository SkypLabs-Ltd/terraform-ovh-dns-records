# OVH DNS Terraform Module

Terraform module aiming to provide an easy way to manage DNS records on OVH.

This module follows the [standard structure][standard-module-structure]
described in the [Terraform documentation][terraform-docs].

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_ovh"></a> [ovh](#requirement\_ovh) | ~> 0.25 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_ovh"></a> [ovh](#provider\_ovh) | 0.25.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [ovh_domain_zone_record.this](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/domain_zone_record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_records"></a> [records](#input\_records) | DNS records. | <pre>set(object({<br>    name    = string<br>    type    = string<br>    ttl     = number<br>    targets = list(string)<br>  }))</pre> | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | The DNS zone to add the records to. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_records"></a> [records](#output\_records) | DNS records. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

 [pre-commit]: https://pre-commit.com/ "pre-commit Website"
 [standard-module-structure]: https://www.terraform.io/docs/modules/index.html#standard-module-structure "Terraform Documentation - Standard Module Structure"
 [terraform-docs]: https://www.terraform.io/docs/ "Terraform Documentation"
