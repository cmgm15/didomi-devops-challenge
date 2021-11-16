# Terraform Setup Didomi Challenge

This stack includes the creation of the resources below:
- VPC setup
- RDS Aurora cluster
- RDS proxy
- Elasticache Redis cluster
- IAM User for CICD
- All required security groups
- Route53 Hosted Zone setup
- ACM certificate creation and validation
- S3 bucket for large files
- Secret in Secrets Manager to handle the secrets for RDS database connection

## Usage

This was created using terraform version 1.0.10.

The base folder is just to setup the backed required for the terraform stuff. You can find that a backend was already created but you can just ignore that and create a new one in a different AWS account.

The modules folder has all resources that will be created for this stack.

The live folder is the folder that is going to effectively created the resources. I strongly recommend to use workspaces in order to handle multiple environments with the same backend and terraform live code. 

### Deployment

To deploy the terraform stack

First add your aws access keys

```
export AWS_ACCESS_KEY_ID=<aws_access_key>
export AWS_SECRET_ACCESS_KEY=<aws_secret_key>
```

Please create your terraform workspace. And then execute the deployment process

```
terraform init
terraform workspace new <your_workspace_name>
terraform plan -var-file=<your_tfvars_file>
terraform apply -var-file=<your_tfvars_file>
```

### Clean up

To remove the serverless stack

```
terraform destroy -var-file=<your_tfvars_file>
```

### Note

There are some environment variables that I strongly recommend to setup using TF_VARS environment variables to be provided at running time for security purposes. 

### Information about folder structure

Each folder has its README.md with some helpful information to understand the terraform stack.