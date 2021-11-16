output "secret_arn" {
  value       = aws_secretsmanager_secret.secret.arn
  description = "Database secret ARN"
}

output "lambda_sg" {
  value       = module.networking.lambda_sg
  description = "Identifier for the Lambda security group - to be used for serverless framework"
}

output "private_subnets_ids" {
  value       = module.networking.private_subnets
  description = "List of private subnets "
}

output "s3_bucket" {
  value       = module.storage.s3_bucket
  description = "S3 bucket name for the large files that the application requires"
}
