/**
  * # README.md
  * 
  * S3 bucket setup to store securely the terraform state.
*/

module "s3_remote_state" {
  source      = "github.com/cmgm15/tf-s3-remote-state?ref=1.0.1"
  owner       = var.owner
  application = var.app
  tags        = var.tags
}
