# README.md

Terraform module for creation of DNS Hosted zone in route53 and ACM certificate.
This include the validation of the certificate created with the DNS.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_acm_certificate_validation.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) | resource |
| [aws_route53_record.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_zone.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | The domain name to be created | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tagging for best practice | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_acm_id"></a> [acm\_id](#output\_acm\_id) | ACM certificate id |
| <a name="output_route53_zone"></a> [route53\_zone](#output\_route53\_zone) | Route53 zone id of hosted zone created |
