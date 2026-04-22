variable "name" {
  description = "Distribution name (used for tagging)"
  type        = string
}

variable "alb_dns_name" {
  description = "DNS name of the ALB (CloudFront origin)"
  type        = string
}

variable "aliases" {
  description = "Domain aliases (CNAME) for the distribution"
  type        = list(string)
  default     = []
}

variable "acm_certificate_arn" {
  description = "ACM certificate ARN (must be in us-east-1)"
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
