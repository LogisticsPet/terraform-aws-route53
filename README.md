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
      "Sid": "Route53",
      "Effect": "Allow",
      "Action": [
        "route53:CreateHostedZone",
        "route53:DeleteHostedZone"
      ],
      "Resource": "*"
    },
    {
      "Sid": "Route53Change",
      "Effect": "Allow",
      "Action": [
        "route53:GetChange"
      ],
      "Resource": "arn:aws:route53:::change/*"
    },
    {
      "Sid": "Route53Chang1e",
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
| <a name="output_nameservers"></a> [nameservers](#output\_nameservers) | n/a |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain"></a> [domain](#input\_domain) | Route 53 domain name | `string` | n/a | yes |


<!-- END_TF_DOCS -->
