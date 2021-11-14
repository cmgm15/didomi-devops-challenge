output "cicd_access_key" {
  value = aws_iam_access_key.cicd.id
}

output "cicd_secret_key" {
  value = aws_iam_access_key.cicd.secret
}

output "rds_proyx_role_arn" {
  value = aws_iam_role.rds_proxy.arn
}