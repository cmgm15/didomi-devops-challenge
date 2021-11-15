resource "aws_db_subnet_group" "rds" {
  name        = "${var.name}-sng"
  description = "Our main group of subnets"
  subnet_ids  = var.private_subnets

  tags = var.tags
}

resource "aws_rds_cluster" "rds" {
  cluster_identifier     = var.name
  database_name          = var.name
  engine                 = var.rds_engine
  engine_version         = var.rds_engine_version
  apply_immediately      = false
  availability_zones     = var.availability_zones
  db_subnet_group_name   = aws_db_subnet_group.rds.id
  vpc_security_group_ids = [var.rds_sg]

  master_username = var.rds_username
  master_password = var.rds_password

  deletion_protection          = true
  skip_final_snapshot          = false
  final_snapshot_identifier    = "${var.name}-last-snapshot"
  copy_tags_to_snapshot        = true
  backup_retention_period      = var.rds_backup_retention_period
  preferred_backup_window      = "02:00-03:00"
  preferred_maintenance_window = "sun:08:00-sun:09:00"

  storage_encrypted = true

  tags = var.tags
}

resource "aws_db_proxy" "rds" {
  name                   = var.name
  engine_family          = var.rds_proyx_engine
  require_tls            = true
  role_arn               = var.rds_proyx_role_arn
  vpc_security_group_ids = [var.rds_sg]
  vpc_subnet_ids         = var.private_subnets

  auth {
    auth_scheme = "SECRETS"
    secret_arn  = var.secret_arn
  }

  tags = var.tags
}

resource "aws_db_proxy_default_target_group" "rds" {
  db_proxy_name = aws_db_proxy.rds.name

  connection_pool_config {
    connection_borrow_timeout    = 120
    max_connections_percent      = 100
    max_idle_connections_percent = 50
  }
}

resource "aws_db_proxy_target" "rds" {
  db_cluster_identifier = aws_rds_cluster.rds.cluster_identifier
  db_proxy_name         = aws_db_proxy.rds.name
  target_group_name     = aws_db_proxy_default_target_group.rds.name
}
