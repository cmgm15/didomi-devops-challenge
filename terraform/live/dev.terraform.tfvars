application = "didomi-challenge"
region      = "us-east-1"
environment = "dev"

cidr_block           = "172.16.0.0/16"
availability_zones   = ["us-east-1a", "us-east-1b", "us-east-1c"]
cidr_private_subnets = ["172.16.0.0/24", "172.16.1.0/24", "172.16.2.0/24"]
cidr_public_subnets  = ["172.16.10.0/24", "172.16.11.0/24", "172.16.12.0/24"]
rds_port             = "5432"
elasticache_port     = "6379"

domain_name = "cgomez-didomi.io"

redis_node_type = "cache.m4.large"
redis_version   = "5.0.6"
redis_port      = "6379"
#redis_token - setup using the terraform input for security purposes
redis_nodes                = "3"
redis_parameter_group_name = "default.redis3.2"
redis_snapshot_period      = "0"

rds_backup_retention_period = "30"
rds_engine_version          = "10.14"
rds_engine                  = "aurora-postgresql"
rds_username                = "didomi"
#rds_password - setup using the terraform input for security purposes
rds_proyx_engine = "POSTGRESQL"
