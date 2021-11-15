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
| <a name="input_name"></a> [name](#input\_name) | n/a | `any` | n/a | yes |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | n/a | `list(string)` | n/a | yes |
| <a name="input_rds_engine"></a> [rds\_engine](#input\_rds\_engine) | n/a | `any` | n/a | yes |
| <a name="input_rds_proyx_role_arn"></a> [rds\_proyx\_role\_arn](#input\_rds\_proyx\_role\_arn) | n/a | `any` | n/a | yes |
| <a name="input_rds_sg"></a> [rds\_sg](#input\_rds\_sg) | n/a | `any` | n/a | yes |
| <a name="input_redis_node_type"></a> [redis\_node\_type](#input\_redis\_node\_type) | n/a | `any` | n/a | yes |
| <a name="input_redis_nodes"></a> [redis\_nodes](#input\_redis\_nodes) | n/a | `any` | n/a | yes |
| <a name="input_redis_port"></a> [redis\_port](#input\_redis\_port) | n/a | `any` | n/a | yes |
| <a name="input_redis_snapshot_period"></a> [redis\_snapshot\_period](#input\_redis\_snapshot\_period) | n/a | `any` | n/a | yes |
| <a name="input_redis_token"></a> [redis\_token](#input\_redis\_token) | n/a | `any` | n/a | yes |
| <a name="input_redis_version"></a> [redis\_version](#input\_redis\_version) | n/a | `any` | n/a | yes |
| <a name="input_secret_arn"></a> [secret\_arn](#input\_secret\_arn) | n/a | `any` | n/a | yes |
| <a name="input_sg_redis"></a> [sg\_redis](#input\_sg\_redis) | n/a | `any` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags associated to the resources | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rds_endpoint"></a> [rds\_endpoint](#output\_rds\_endpoint) | RDS Proxy endpoint for the setup of the Lambda function |
| <a name="output_redis_configuration_endpoint_address"></a> [redis\_configuration\_endpoint\_address](#output\_redis\_configuration\_endpoint\_address) | Configuration endpoint for Redis. If you require endpoint for the nodes please look up in the AWS Console |
| <a name="output_s3_bucket"></a> [s3\_bucket](#output\_s3\_bucket) | S3 bucket name for the large files that the application requires |
