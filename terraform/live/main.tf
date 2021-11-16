/**
  * # README.md
  * 
  * Didomi Challenge Terraform code.
*/

data "aws_caller_identity" "current" {}

locals {
  owner   = "cgomez"
  purpose = "Infrastructure For Didomi Challenge"
}

locals {
  name = "${var.application}-${var.environment}"
  common_tags = {
    application = var.application
    environment = var.environment
    purpose     = local.purpose
    responsible = local.owner
    creator     = data.aws_caller_identity.current.user_id
  }
}

resource "aws_secretsmanager_secret" "secret" {
  name                    = local.name
  recovery_window_in_days = 7

  tags = local.common_tags
}

module "networking" {
  source = "../modules/networking"

  name = local.name

  cidr_block         = var.cidr_block
  availability_zones = var.availability_zones
  private_subnets    = var.cidr_private_subnets
  public_subnets     = var.cidr_public_subnets
  rds_port           = var.rds_port
  elasticache_port   = var.elasticache_port

  tags = local.common_tags
}

module "iam" {
  source = "../modules/iam"

  name = local.name

  secret_arn = aws_secretsmanager_secret.secret.arn

  tags = local.common_tags
}

module "dns_with_certificate" {
  source = "../modules/dns_with_certificate"

  domain_name = var.domain_name

  tags = local.common_tags
}

module "storage" {
  source = "../modules/storage"

  name = local.name

  availability_zones = var.availability_zones
  private_subnets    = module.networking.private_subnets

  redis_node_type            = var.redis_node_type
  redis_port                 = var.redis_port
  redis_token                = var.redis_token
  redis_nodes                = var.redis_nodes
  redis_parameter_group_name = var.redis_parameter_group_name
  redis_version              = var.redis_version
  sg_redis                   = module.networking.elasticache_sg
  redis_snapshot_period      = var.redis_snapshot_period

  rds_backup_retention_period = var.rds_backup_retention_period
  rds_engine_version          = var.rds_engine_version
  rds_engine                  = var.rds_engine
  rds_username                = var.rds_username
  rds_password                = var.rds_password
  rds_proyx_engine            = var.rds_proyx_engine
  rds_proyx_role_arn          = module.iam.rds_proyx_role_arn
  rds_sg                      = module.networking.rds_sg
  secret_arn                  = aws_secretsmanager_secret.secret.arn

  tags = local.common_tags
}
