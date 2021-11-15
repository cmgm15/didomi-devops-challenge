variable "name" {}

variable "private_subnets" {
  type = list(string)
}

variable "availability_zones" {}

variable "rds_backup_retention_period" {}

variable "rds_engine_version" {}

variable "rds_engine" {}

variable "rds_username" {}

variable "rds_password" {}

variable "rds_proyx_engine" {}

variable "rds_proyx_role_arn" {}

variable "rds_sg" {}

variable "secret_arn" {}
