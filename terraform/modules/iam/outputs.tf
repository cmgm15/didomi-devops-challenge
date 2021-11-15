output "cicd_access_key" {
  value       = aws_iam_access_key.cicd.id
  description = "AWS Access Key for CICD setup"
}

output "cicd_secret_key" {
  value       = aws_iam_access_key.cicd.secret
  description = "AWS Secret Key for CICD setup"
}

output "rds_proyx_role_arn" {
  value       = aws_iam_role.rds_proxy.arn
  description = "Iam role ARN for rds proxy setup"
}