module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "v3.11.0"

  name = var.name
  cidr = var.cidr_block

  azs             = var.availability_zones
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

resource "aws_security_group" "rds" {
  name        = "${var.name}-rds-sg"
  description = "SG for nodes for RDS"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description      = "TLS from VPC"
    from_port        = var.rds_port
    to_port          = var.rds_port
    protocol         = "tcp"
    security_groups = [aws_security_group.lambda.id]

  }

  tags = var.tags
}

resource "aws_security_group" "elasticache" {
  name        = "${var.name}-rds-sg"
  description = "SG for nodes for Elasticache"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description      = "TLS from VPC"
    from_port        = var.elasticache_port
    to_port          = var.elasticache_port
    protocol         = "tcp"
    security_groups = [aws_security_group.lambda.id]

  }

  tags = var.tags
}

resource "aws_security_group" "lambda" {
  name        = "${var.name}-lambda-sg"
  description = "SG for nodes for Lambda"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description      = "TLS from VPC"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = [var.cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = var.tags
}