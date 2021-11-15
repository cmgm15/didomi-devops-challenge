variable "name" {
  type        = string
  description = "Common name for the resources - it will be related to application and environment"
}

variable "private_subnets" {
  type        = list(string)
  description = "List of private subnets ids"
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

variable "redis_version" {
  type        = string
  description = "Redis version setup"
}

variable "sg_redis" {
  type        = string
  description = "Security group id to be attached to the redis cluster"
}

variable "redis_snapshot_period" {
  type        = string
  description = "Snapshot retention limit"
}

variable "tags" {
  description = "Tags associated to the resources"
  type        = map(string)
}
