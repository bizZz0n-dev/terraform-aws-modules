variable "github_org" {
  description = "GitHub organisation name"
  type        = string
}

variable "github_repos" {
  description = "GitHub repository names (without org prefix)"
  type        = list(string)
}

variable "role_name" {
  description = "IAM role name for GitHub Actions"
  type        = string
  default     = "github-actions-role"
}

variable "ref_pattern" {
  description = "GitHub ref pattern for the OIDC sub claim (e.g. 'ref:refs/heads/main', 'environment:production', '*' for any)"
  type        = string
  default     = "ref:refs/heads/main"
}

variable "policy_arns" {
  description = "IAM policy ARNs to attach to the role"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}
