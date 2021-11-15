variable "name" {}

variable "private_subnets" {
  type = list(string)
}

variable "redis_node_type" {}

variable "redis_port" {}

variable "redis_token" {}

variable "redis_nodes" {}

variable "redis_version" {}

variable "sg_redis" {}

variable "redis_snapshot_period" {}

variable "rds_engine" {}

variable "rds_proyx_role_arn" {}

variable "rds_sg" {}

variable "secret_arn" {}

variable "tags" {
  description = "Tags associated to the resources"
  type        = map(string)
}
