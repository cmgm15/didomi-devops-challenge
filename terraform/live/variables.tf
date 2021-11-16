variable "application" {
  type        = string
  description = "Application name"
}

variable "environment" {
  type        = string
  description = "Associated environment for the infrastructure"
}

variable "region" {
  type        = string
  description = "AWS Region to be used"
}

variable "domain_name" {
  type        = string
  description = "The domain name to be created"
}

variable "cidr_block" {
  type        = string
  description = "CIDR Block for the VPC setup"
}

variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones for the creation of the subnets"
}

variable "cidr_private_subnets" {
  type        = list(string)
  description = "List of CIDR Block for private subnets"
}

variable "cidr_public_subnets" {
  type        = list(string)
  description = "List of CIDR Block for public subnets"
}

variable "rds_port" {
  type        = string
  description = "Database port to setup the security groups required"
}

variable "elasticache_port" {
  type        = string
  description = "Elasticache port to setup the security groups required"
}

variable "redis_node_type" {
  type        = string
  description = "Instance type for the cluster members"
}

variable "redis_port" {
  type        = string
  description = "Port of the redis instance"
}

variable "redis_token" {
  type        = string
  description = "Authentication token for the elasticache"
}

variable "redis_nodes" {
  type        = string
  description = "Number of cluster members"
}

variable "redis_parameter_group_name" {
  type        = string
  description = "Parameter group name for the elasticache replication group"
}

variable "redis_version" {
  type        = string
  description = "Redis version setup"
}

variable "redis_snapshot_period" {
  type        = string
  description = "Snapshot retention limit"
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
