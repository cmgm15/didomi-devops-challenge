/**
  * # README.md
  * 
  * Terraform module for creation of storage for the application.
  * It includes redis cluster, rds aurora postgresql cluster and s3 bucket.
*/

module "redis" {
  source = "./elasticache"

  name            = var.name
  private_subnets = var.private_subnets

  redis_node_type       = var.redis_node_type
  redis_port            = var.redis_port
  redis_token           = var.redis_token
  redis_nodes           = var.redis_nodes
  redis_version         = var.redis_version
  redis_snapshot_period = var.redis_snapshot_period
  sg_redis              = var.sg_redis

  tags = var.tags
}

module "rds_proxy" {
  source = "./rds"

  name               = var.name
  private_subnets    = var.private_subnets
  availability_zones = var.availability_zones

  rds_backup_retention_period = var.rds_backup_retention_period
  rds_engine_version          = var.rds_engine_version
  rds_engine                  = var.rds_engine
  rds_username                = var.rds_username
  rds_password                = var.rds_password
  rds_proyx_engine            = var.rds_proyx_engine
  rds_proyx_role_arn          = var.rds_proyx_role_arn
  rds_sg                      = var.rds_sg
  secret_arn                  = var.secret_arn

  tags = var.tags
}

module "s3_large_files" {
  source = "./s3"

  name = var.name

  tags = var.tags
}
