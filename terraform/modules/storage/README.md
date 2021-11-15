# README.md

Terraform module for creation of storage for the application.
It includes redis cluster, rds aurora postgresql cluster and s3 bucket.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_rds_proxy"></a> [rds\_proxy](#module\_rds\_proxy) | ./rds | n/a |
| <a name="module_redis"></a> [redis](#module\_redis) | ./elasticache | n/a |
| <a name="module_s3_large_files"></a> [s3\_large\_files](#module\_s3\_large\_files) | ./s3 | n/a |

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
| <a name="input_redis_node_type"></a> [redis\_node\_type](#input\_redis\_node\_type) | Instance type for the cluster members | `string` | n/a | yes |
| <a name="input_redis_nodes"></a> [redis\_nodes](#input\_redis\_nodes) | Number of cluster members | `string` | n/a | yes |
| <a name="input_redis_port"></a> [redis\_port](#input\_redis\_port) | Port of the redis instance | `string` | n/a | yes |
| <a name="input_redis_snapshot_period"></a> [redis\_snapshot\_period](#input\_redis\_snapshot\_period) | Snapshot retention limit | `string` | n/a | yes |
| <a name="input_redis_token"></a> [redis\_token](#input\_redis\_token) | Authentication token for the elasticache | `string` | n/a | yes |
| <a name="input_redis_version"></a> [redis\_version](#input\_redis\_version) | Redis version setup | `string` | n/a | yes |
| <a name="input_secret_arn"></a> [secret\_arn](#input\_secret\_arn) | Secret manager ARN to get database credentials from the RDS proxy | `string` | n/a | yes |
| <a name="input_sg_redis"></a> [sg\_redis](#input\_sg\_redis) | Security group id to be attached to the redis cluster | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags associated to the resources | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rds_endpoint"></a> [rds\_endpoint](#output\_rds\_endpoint) | RDS Proxy endpoint for the setup of the Lambda function |
| <a name="output_redis_configuration_endpoint_address"></a> [redis\_configuration\_endpoint\_address](#output\_redis\_configuration\_endpoint\_address) | Configuration endpoint for Redis. If you require endpoint for the nodes please look up in the AWS Console |
| <a name="output_s3_bucket"></a> [s3\_bucket](#output\_s3\_bucket) | S3 bucket name for the large files that the application requires |
