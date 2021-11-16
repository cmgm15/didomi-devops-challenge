variable "name" {
  type        = string
  description = "Common name for the resources - it will be related to application and environment"
}

variable "private_subnets" {
  type        = list(string)
  description = "List of private subnets ids"
}

variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones for the creation of the subnets"
}

variable "rds_backup_retention_period" {
  type        = string
  description = "Days for retention of the RDS backups"
}

variable "rds_engine_version" {
  type        = string
  description = "Version of the engine that we are going to setup for the RDS cluster"
}

variable "rds_engine" {
  type        = string
  description = "Engine that we are going to setup for the RDS cluster"
}

variable "rds_username" {
  type        = string
  description = "Username for the RDS setup"
}

variable "rds_password" {
  type        = string
  description = "Password for the RDS setup. Please don't add this to a terraform.tfvars file."
}

variable "rds_proyx_engine" {
  type        = string
  description = "Engine for the RDS proxy that we are going to setup for the RDS cluster"
}

variable "rds_proyx_role_arn" {
  type        = string
  description = "IAM role ARN for the RDS proxy"
}

variable "rds_sg" {
  type        = string
  description = "Security group id for the RDS proxy and RDS cluster"
}

variable "secret_arn" {
  type        = string
  description = "Secret manager ARN to get database credentials from the RDS proxy"
}

variable "tags" {
  description = "Tags associated to the resources"
  type        = map(string)
}
