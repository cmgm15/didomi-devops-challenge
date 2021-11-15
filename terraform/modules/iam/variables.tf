variable "name" {
  type        = string
  description = "Common name for the resources - it will be related to application and environment"
}

variable "secret_arn" {
  type        = string
  description = "Secrets manager secret ARN for the setup of database secret access"
}

variable "tags" {
  type        = map(string)
  description = "Tags for the S3 bucket"
}