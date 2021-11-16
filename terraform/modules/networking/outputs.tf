output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "VPC id created"
}

output "rds_sg" {
  value       = aws_security_group.rds.id
  description = "Identifier for the RDS security group"
}

output "elasticache_sg" {
  value       = aws_security_group.elasticache.id
  description = "Identifier for the Elasticache security group"
}

output "lambda_sg" {
  value       = aws_security_group.lambda.id
  description = "Identifier for the Lambda security group - to be used for serverless framework"
}

output "private_subnets" {
  value       = module.vpc.private_subnets
  description = "List of private subnets "
}