# README.md

Terraform module for creation of Elasticache Redis Cluster.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_elasticache_cluster.redis](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_cluster) | resource |
| [aws_elasticache_replication_group.redis](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_replication_group) | resource |
| [aws_elasticache_subnet_group.redis](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_subnet_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Common name for the resources - it will be related to application and environment | `string` | n/a | yes |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | List of private subnets ids | `list(string)` | n/a | yes |
| <a name="input_redis_node_type"></a> [redis\_node\_type](#input\_redis\_node\_type) | Instance type for the cluster members | `string` | n/a | yes |
| <a name="input_redis_nodes"></a> [redis\_nodes](#input\_redis\_nodes) | Number of cluster members | `string` | n/a | yes |
| <a name="input_redis_parameter_group_name"></a> [redis\_parameter\_group\_name](#input\_redis\_parameter\_group\_name) | Parameter group name for the elasticache replication group | `string` | n/a | yes |
| <a name="input_redis_port"></a> [redis\_port](#input\_redis\_port) | Port of the redis instance | `string` | n/a | yes |
| <a name="input_redis_snapshot_period"></a> [redis\_snapshot\_period](#input\_redis\_snapshot\_period) | Snapshot retention limit | `string` | n/a | yes |
| <a name="input_redis_token"></a> [redis\_token](#input\_redis\_token) | Authentication token for the elasticache | `string` | n/a | yes |
| <a name="input_redis_version"></a> [redis\_version](#input\_redis\_version) | Redis version setup | `string` | n/a | yes |
| <a name="input_sg_redis"></a> [sg\_redis](#input\_sg\_redis) | Security group id to be attached to the redis cluster | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags associated to the resources | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_redis_configuration_endpoint_address"></a> [redis\_configuration\_endpoint\_address](#output\_redis\_configuration\_endpoint\_address) | Configuration endpoint for Redis. If you require endpoint for the nodes please look up in the AWS Console |
