variable "name" {
  description = "Name of the IAM user"
  type        = string
}

variable "api_keys" {
  description = "Boolean to determine whether to create IAM user credentials"
  type        = bool
}

variable "tags" {
  description = "Tags to set on the resources."
  type        = map(string)
  default     = {}
}