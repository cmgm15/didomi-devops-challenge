# README.md

S3 bucket setup to store securely the terraform state.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.10 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_s3_remote_state"></a> [s3\_remote\_state](#module\_s3\_remote\_state) | github.com/cmgm15/tf-s3-remote-state | 1.0.1 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app"></a> [app](#input\_app) | Name of the application that the state is going to be stored in the bucket | `string` | n/a | yes |
| <a name="input_owner"></a> [owner](#input\_owner) | User that owns the s3 bucket for the terraform state | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS Region | `string` | `"us-east-1"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for the S3 bucket | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_s3_remote_state"></a> [s3\_remote\_state](#output\_s3\_remote\_state) | S3 bucket name for the remote state |
