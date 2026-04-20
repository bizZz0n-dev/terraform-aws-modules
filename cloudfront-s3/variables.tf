variable "name" {
  type = string
}
variable "bucket_name" {
  type = string
}
variable "acm_certificate_arn" {
  type = string
}
variable "aliases" {
  type = list(string)
  default = []
}
variable "env" {
  type = string
}
variable "spa_fallback" {
  description = "Rewrite 403/404 to /index.html with 200 — for single-page / client-routed apps"
  type        = bool
  default     = false
}
