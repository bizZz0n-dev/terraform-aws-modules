variable "cluster_name" {
  type = string
}
variable "env" {
  type = string
}
variable "node_instance_type" {
  type = string
  default = "t3.medium"
}
variable "desired_capacity" {
  type = number
  default = 2
}
variable "private_subnet_ids" {
  type = list(string)
}
