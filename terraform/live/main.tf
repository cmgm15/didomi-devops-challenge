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
    responsible = local.cgomez
    creator     = data.aws_caller_identity.current.user_id
  }
}

resource "aws_secretsmanager_secret" "secret" {
  name                    = var.name
  recovery_window_in_days = 7

  tags = var.tags
}