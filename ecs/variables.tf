variable "service_name" {
  type = string
}
variable "cluster_name" {
  type = string
}
variable "region" {
  type = string
}
variable "env" {
  type = string
}
variable "desired_count" {
  type = number
  default = 1
}
variable "vpc_id" {
  type = string
}
variable "private_subnet_ids" {
  type = list(string)
}
