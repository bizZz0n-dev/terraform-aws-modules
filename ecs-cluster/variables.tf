variable "cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
}

variable "env" {
  description = "Environment name (e.g. staging, production)"
  type        = string
}

variable "tags" {
  description = "Additional tags to apply to all resources"
  type        = map(string)
  default     = {}
}
