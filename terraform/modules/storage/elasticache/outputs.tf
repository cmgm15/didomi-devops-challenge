output "redis_configuration_endpoint_address" {
  value       = aws_elasticache_replication_group.redis.configuration_endpoint_address
  description = "Configuration endpoint for Redis. If you require endpoint for the nodes please look up in the AWS Console"
}
