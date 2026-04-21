variable "name" {
  description = "ECR repository name"
  type        = string
}

variable "env" {
  description = "Environment tag"
  type        = string
}

variable "tags" {
  description = "Additional resource tags"
  type        = map(string)
  default     = {}
}
