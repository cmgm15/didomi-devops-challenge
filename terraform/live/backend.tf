terraform {
  backend "s3" {
    bucket  = "didomi-challenge-tf-state"
    key     = "workspace/didomi-challenge.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
