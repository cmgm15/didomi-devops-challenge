# Serverless Setup Didomi Challenge

This stack includes the creation of the resources below:
- Lambda function
- API Gateway - Rest type
- Route53 custom domain for the API Gateway
- CloudFormation stack to deploy the resources
- S3 bucket to save the deployment artifact
- CloudWatch log group

## Usage

To install required node modules

```
npm install -g serverless
npm install serverless-domain-manager --save-dev
```

### Deployment

To deploy the serverless stack

First add your aws access keys

```
export AWS_ACCESS_KEY_ID=<aws_access_key>
export AWS_SECRET_ACCESS_KEY=<aws_secret_key>
```

Second step, you should setup the right environment variables modifying the file .env.
In that file, you are going to setup the environment variables that you require. Most of the env variables you can get it from the outputs from terraform deployment.

The current .env file is just a template. Please setup your environment variables properly before running the deployment process itself.

Then run the serverless command to create the resources

```
sls create_domain --stage dev
sls deploy --stage dev
```

### Clean up

To remove the serverless stack

```
sls remove --stage dev
```