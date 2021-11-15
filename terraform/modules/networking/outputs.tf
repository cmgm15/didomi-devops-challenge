output "vpc_id" {
  value = module.vpc.vpc_id
}

output "rds_sg" {
  value = aws_security_group.rds.id
}

output "elasticache_sg" {
  value = aws_security_group.elasticache.id
}

output "lambda_sg" {
  value = aws_security_group.lambda.id
}

output "private_subnets" {
  value = module.vpc.private_subnets
}