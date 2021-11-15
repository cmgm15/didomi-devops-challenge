variable "name" {
  type        = string
  description = "Common name for the resources - it will be related to application and environment"
}

variable "cidr_block" {
  type        = string
  description = "CIDR Block for the VPC setup"
}

variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones for the creation of the subnets"
}

variable "private_subnets" {
  type        = list(string)
  description = "List of CIDR Block for private subnets"
}

variable "public_subnets" {
  type        = list(string)
  description = "List of CIDR Block for public subnets"
}

variable "rds_port" {
  type        = list(string)
  description = "Database port to setup the security groups required"
}

variable "elasticache_port" {
  type        = list(string)
  description = "Elasticache port to setup the security groups required"
}

variable "tags" {
  description = "Tags associated to the resources"
  type        = map(string)
}