## Introduction
Terraform module to provision route53 hosted zone 

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.7.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.41.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_zones"></a> [zones](#module\_zones) | terraform-aws-modules/route53/aws//modules/zones | 2.11.1 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain"></a> [domain](#input\_domain) | Route 53 domain name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_nameservers"></a> [nameservers](#output\_nameservers) | n/a |
<!-- END_TF_DOCS -->
