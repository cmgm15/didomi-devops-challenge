# README.md

Didomi Challenge Terraform code.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.10 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.65.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_dns_with_certificate"></a> [dns\_with\_certificate](#module\_dns\_with\_certificate) | ../modules/dns_with_certificate | n/a |
| <a name="module_iam"></a> [iam](#module\_iam) | ../modules/iam | n/a |
| <a name="module_networking"></a> [networking](#module\_networking) | ../modules/networking | n/a |
| <a name="module_storage"></a> [storage](#module\_storage) | ../modules/storage | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_secretsmanager_secret.secret](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application"></a> [application](#input\_application) | Application name | `string` | n/a | yes |
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | List of availability zones for the creation of the subnets | `list(string)` | n/a | yes |
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | CIDR Block for the VPC setup | `string` | n/a | yes |
| <a name="input_cidr_private_subnets"></a> [cidr\_private\_subnets](#input\_cidr\_private\_subnets) | List of CIDR Block for private subnets | `list(string)` | n/a | yes |
| <a name="input_cidr_public_subnets"></a> [cidr\_public\_subnets](#input\_cidr\_public\_subnets) | List of CIDR Block for public subnets | `list(string)` | n/a | yes |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | The domain name to be created | `string` | n/a | yes |
| <a name="input_elasticache_port"></a> [elasticache\_port](#input\_elasticache\_port) | Elasticache port to setup the security groups required | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Associated environment for the infrastructure | `string` | n/a | yes |
| <a name="input_rds_backup_retention_period"></a> [rds\_backup\_retention\_period](#input\_rds\_backup\_retention\_period) | Days for retention of the RDS backups | `string` | n/a | yes |
| <a name="input_rds_engine"></a> [rds\_engine](#input\_rds\_engine) | Engine that we are going to setup for the RDS cluster | `string` | n/a | yes |
| <a name="input_rds_engine_version"></a> [rds\_engine\_version](#input\_rds\_engine\_version) | Version of the engine that we are going to setup for the RDS cluster | `string` | n/a | yes |
| <a name="input_rds_password"></a> [rds\_password](#input\_rds\_password) | Password for the RDS setup. Please don't add this to a terraform.tfvars file. | `string` | n/a | yes |
| <a name="input_rds_port"></a> [rds\_port](#input\_rds\_port) | Database port to setup the security groups required | `string` | n/a | yes |
| <a name="input_rds_proyx_engine"></a> [rds\_proyx\_engine](#input\_rds\_proyx\_engine) | Engine for the RDS proxy that we are going to setup for the RDS cluster | `string` | n/a | yes |
| <a name="input_rds_username"></a> [rds\_username](#input\_rds\_username) | Username for the RDS setup | `string` | n/a | yes |
| <a name="input_redis_node_type"></a> [redis\_node\_type](#input\_redis\_node\_type) | Instance type for the cluster members | `string` | n/a | yes |
| <a name="input_redis_nodes"></a> [redis\_nodes](#input\_redis\_nodes) | Number of cluster members | `string` | n/a | yes |
| <a name="input_redis_parameter_group_name"></a> [redis\_parameter\_group\_name](#input\_redis\_parameter\_group\_name) | Parameter group name for the elasticache replication group | `string` | n/a | yes |
| <a name="input_redis_port"></a> [redis\_port](#input\_redis\_port) | Port of the redis instance | `string` | n/a | yes |
| <a name="input_redis_snapshot_period"></a> [redis\_snapshot\_period](#input\_redis\_snapshot\_period) | Snapshot retention limit | `string` | n/a | yes |
| <a name="input_redis_token"></a> [redis\_token](#input\_redis\_token) | Authentication token for the elasticache | `string` | n/a | yes |
| <a name="input_redis_version"></a> [redis\_version](#input\_redis\_version) | Redis version setup | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS Region to be used | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lambda_sg"></a> [lambda\_sg](#output\_lambda\_sg) | Identifier for the Lambda security group - to be used for serverless framework |
| <a name="output_private_subnets_ids"></a> [private\_subnets\_ids](#output\_private\_subnets\_ids) | List of private subnets |
| <a name="output_s3_bucket"></a> [s3\_bucket](#output\_s3\_bucket) | S3 bucket name for the large files that the application requires |
| <a name="output_secret_arn"></a> [secret\_arn](#output\_secret\_arn) | Database secret ARN |
