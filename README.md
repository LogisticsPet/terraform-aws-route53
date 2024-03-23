## Introduction
Terraform module to provision route53 hosted zone 

<!-- BEGIN_TF_DOCS -->


## Prerequisites

The following IAM policy needs to be attached to the role that is assumed during the creation of module resources:

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "route53:CreateHostedZone",
        "route53:DeleteHostedZone"
      ],
      "Resource": "*"
    },
    {
      "Effect": "Allow",
      "Action": [
        "route53:GetChange"
      ],
      "Resource": "arn:aws:route53:::change/*"
    },
    {
      "Effect": "Allow",
      "Action": [
        "route53:GetHostedZone",
        "route53:ListTagsForResource",
        "route53:ChangeTagsForResource"
      ],
      "Resource": "arn:aws:route53:::hostedzone/*"
    }
  ]
}
```

## Providers

No providers.
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_nameservers"></a> [nameservers](#output\_nameservers) | List of Nameservers for Route 53 zone. |
| <a name="output_zone_arn"></a> [zone\_arn](#output\_zone\_arn) | Route 53 zone ARN. |
| <a name="output_zone_id"></a> [zone\_id](#output\_zone\_id) | Route 53 zone ID. |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain"></a> [domain](#input\_domain) | Route 53 domain name | `string` | n/a | yes |

<!-- END_TF_DOCS -->
