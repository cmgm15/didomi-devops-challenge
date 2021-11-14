variable "name" {}

variable "cidr_block" {}

variable "availability_zones" {
  type = list(string)
}

variable "private_subnets" {
  type = list(string)
}

variable "public_subnets" {
  type = list(string)
}

variable "rds_port" {}

variable "elasticache_port" {}

variable "tags" {}