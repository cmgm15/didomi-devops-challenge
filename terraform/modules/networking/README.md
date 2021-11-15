# README.md

Terraform module for creation of VPC.
Also it includes creation of security groups for Lambda, RDS and Elasticache.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | v3.11.0 |

## Resources

| Name | Type |
|------|------|
| [aws_security_group.elasticache](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.lambda](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.rds](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | List of availability zones for the creation of the subnets | `list(string)` | n/a | yes |
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | CIDR Block for the VPC setup | `string` | n/a | yes |
| <a name="input_elasticache_port"></a> [elasticache\_port](#input\_elasticache\_port) | Elasticache port to setup the security groups required | `list(string)` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Common name for the resources - it will be related to application and environment | `string` | n/a | yes |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | List of CIDR Block for private subnets | `list(string)` | n/a | yes |
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | List of CIDR Block for public subnets | `list(string)` | n/a | yes |
| <a name="input_rds_port"></a> [rds\_port](#input\_rds\_port) | Database port to setup the security groups required | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for the S3 bucket | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_elasticache_sg"></a> [elasticache\_sg](#output\_elasticache\_sg) | Identifier for the Elasticache security group |
| <a name="output_lambda_sg"></a> [lambda\_sg](#output\_lambda\_sg) | Identifier for the Lambda security group - to be used for serverless framework |
| <a name="output_private_subnets"></a> [private\_subnets](#output\_private\_subnets) | List of private subnets |
| <a name="output_rds_sg"></a> [rds\_sg](#output\_rds\_sg) | Identifier for the RDS security group |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | VPC id created |
