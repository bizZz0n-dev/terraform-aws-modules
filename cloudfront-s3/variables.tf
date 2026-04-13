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
