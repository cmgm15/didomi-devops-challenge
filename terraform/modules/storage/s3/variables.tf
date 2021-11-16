variable "name" {
  type        = string
  description = "Common name for the resources - it will be related to application and environment"
}

variable "tags" {
  description = "Tags associated to the resources"
  type        = map(string)
}
