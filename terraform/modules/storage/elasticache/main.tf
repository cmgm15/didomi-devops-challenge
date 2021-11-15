/**
  * # README.md
  * 
  * Terraform module for creation of Elasticache Redis Cluster.
*/

resource "aws_elasticache_subnet_group" "redis" {
  description = "Elasticache subnet group of private subnets"
  name        = "${var.name}-redis-sng"
  subnet_ids  = var.private_subnets
}

resource "aws_elasticache_cluster" "redis" {
  cluster_id           = var.name
  replication_group_id = aws_elasticache_replication_group.redis.id

  tags = var.tags
}

resource "aws_elasticache_replication_group" "redis" {
  replication_group_id          = var.name
  replication_group_description = "${var.name} Replication Group"
  engine                        = "redis"
  engine_version                = "5.0.6"
  node_type                     = var.redis_node_type
  port                          = var.redis_port
  at_rest_encryption_enabled    = true
  transit_encryption_enabled    = true
  auth_token                    = var.redis_token
  automatic_failover_enabled    = true
  multi_az_enabled              = true
  number_cache_clusters         = var.redis_nodes
  parameter_group_name          = var.redis_version
  security_group_ids            = [var.sg_redis]
  subnet_group_name             = aws_elasticache_subnet_group.redis.name
  snapshot_retention_limit      = var.redis_snapshot_period
  apply_immediately             = true

  cluster_mode {
    replicas_per_node_group = 1
    num_node_groups         = 2
  }

  tags = var.tags
}
