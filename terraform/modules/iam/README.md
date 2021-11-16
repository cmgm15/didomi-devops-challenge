# README.md

Terraform module for creation of IAM user for CICD setup and IAM role required for RDS Proxy setup.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_iam_access_key.cicd](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key) | resource |
| [aws_iam_role.rds_proxy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.rds_proxy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_user.cicd](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_policy.cicd](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy) | resource |
| [aws_iam_policy_document.rds_proxy_secret_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Common name for the resources - it will be related to application and environment | `string` | n/a | yes |
| <a name="input_secret_arn"></a> [secret\_arn](#input\_secret\_arn) | Secrets manager secret ARN for the setup of database secret access | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for the S3 bucket | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cicd_access_key"></a> [cicd\_access\_key](#output\_cicd\_access\_key) | AWS Access Key for CICD setup |
| <a name="output_cicd_secret_key"></a> [cicd\_secret\_key](#output\_cicd\_secret\_key) | AWS Secret Key for CICD setup |
| <a name="output_rds_proyx_role_arn"></a> [rds\_proyx\_role\_arn](#output\_rds\_proyx\_role\_arn) | Iam role ARN for rds proxy setup |
