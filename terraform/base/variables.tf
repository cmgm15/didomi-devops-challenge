variable "owner" {
  type        = string
  description = "User that owns the s3 bucket for the terraform state"
}

variable "app" {
  type        = string
  description = "Name of the application that the state is going to be stored in the bucket"
}

variable "tags" {
  description = "Tags for the S3 bucket"
  type        = map(string)
}

variable "region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-1"
}