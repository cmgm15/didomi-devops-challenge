output "redis_configuration_endpoint_address" {
  value       = module.redis.redis_configuration_endpoint_address
  description = "Configuration endpoint for Redis. If you require endpoint for the nodes please look up in the AWS Console"
}

output "rds_endpoint" {
  value       = module.rds_proxy.rds_endpoint
  description = "RDS Proxy endpoint for the setup of the Lambda function"
}

output "s3_bucket" {
  value       = module.s3_large_files.s3_bucket
  description = "S3 bucket name for the large files that the application requires"
}
