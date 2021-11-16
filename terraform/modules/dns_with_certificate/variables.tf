variable "domain_name" {
  type        = string
  description = "The domain name to be created"
}

variable "tags" {
  description = "Tags associated to the resources"
  type        = map(string)
}
