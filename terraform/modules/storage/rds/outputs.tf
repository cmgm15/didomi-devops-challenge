output "rds_endpoint" {
  value       = aws_db_proxy.rds.endpoint
  description = "RDS Proxy endpoint for the setup of the Lambda function"
}