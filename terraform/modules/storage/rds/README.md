# README.md

Terraform module for creation of RDS Aurora-Postgresql cluster with serverless provisioned setup.
Also it includes creation of RDS Proxy.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_db_proxy.rds](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_proxy) | resource |
| [aws_db_proxy_default_target_group.rds](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_proxy_default_target_group) | resource |
| [aws_db_proxy_target.rds](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_proxy_target) | resource |
| [aws_db_subnet_group.rds](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group) | resource |
| [aws_rds_cluster.rds](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/rds_cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | List of availability zones for the creation of the subnets | `list(string)` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Common name for the resources - it will be related to application and environment | `string` | n/a | yes |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | List of private subnets ids | `list(string)` | n/a | yes |
| <a name="input_rds_backup_retention_period"></a> [rds\_backup\_retention\_period](#input\_rds\_backup\_retention\_period) | Days for retention of the RDS backups | `string` | n/a | yes |
| <a name="input_rds_engine"></a> [rds\_engine](#input\_rds\_engine) | Engine that we are going to setup for the RDS cluster | `string` | n/a | yes |
| <a name="input_rds_engine_version"></a> [rds\_engine\_version](#input\_rds\_engine\_version) | Version of the engine that we are going to setup for the RDS cluster | `string` | n/a | yes |
| <a name="input_rds_password"></a> [rds\_password](#input\_rds\_password) | Password for the RDS setup. Please don't add this to a terraform.tfvars file. | `string` | n/a | yes |
| <a name="input_rds_proyx_engine"></a> [rds\_proyx\_engine](#input\_rds\_proyx\_engine) | Engine for the RDS proxy that we are going to setup for the RDS cluster | `string` | n/a | yes |
| <a name="input_rds_proyx_role_arn"></a> [rds\_proyx\_role\_arn](#input\_rds\_proyx\_role\_arn) | IAM role ARN for the RDS proxy | `string` | n/a | yes |
| <a name="input_rds_sg"></a> [rds\_sg](#input\_rds\_sg) | Security group id for the RDS proxy and RDS cluster | `string` | n/a | yes |
| <a name="input_rds_username"></a> [rds\_username](#input\_rds\_username) | Username for the RDS setup | `string` | n/a | yes |
| <a name="input_secret_arn"></a> [secret\_arn](#input\_secret\_arn) | Secret manager ARN to get database credentials from the RDS proxy | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags associated to the resources | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rds_endpoint"></a> [rds\_endpoint](#output\_rds\_endpoint) | RDS Proxy endpoint for the setup of the Lambda function |
