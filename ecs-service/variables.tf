variable "service_name" {
  description = "Name of the ECS service"
  type        = string
}

variable "cluster_arn" {
  description = "ARN of the ECS cluster"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the task security group"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs for ECS tasks. Use public subnets with assign_public_ip=true when there is no NAT/VPC endpoints, otherwise private subnets."
  type        = list(string)
}

variable "assign_public_ip" {
  description = "Whether Fargate tasks get a public IP. Required true when tasks run in public subnets without NAT gateway."
  type        = bool
  default     = false
}

variable "target_group_arn" {
  description = "ALB target group ARN"
  type        = string
}

variable "alb_security_group_id" {
  description = "Security group ID of the ALB (to allow ingress to tasks)"
  type        = string
}

variable "container_image" {
  description = "Full ECR image URI including tag"
  type        = string
}

variable "container_port" {
  description = "Port the container listens on"
  type        = number
  default     = 3000
}

variable "cpu" {
  description = "Fargate task CPU units"
  type        = number
  default     = 512
}

variable "memory" {
  description = "Fargate task memory in MiB"
  type        = number
  default     = 1024
}

variable "desired_count" {
  description = "Desired number of running tasks"
  type        = number
  default     = 1
}

variable "environment" {
  description = "Environment variables for the container"
  type        = list(object({ name = string, value = string }))
  default     = []
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
