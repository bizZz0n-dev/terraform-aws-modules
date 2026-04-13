variable "cluster_id" {
  type = string
}
variable "engine" {
  type = string
  default = "valkey"
}
variable "node_type" {
  type = string
  default = "cache.t3.micro"
}
variable "num_cache_nodes" {
  type = number
  default = 1
}
variable "env" {
  type = string
}
variable "vpc_id" {
  type = string
}
variable "private_subnet_ids" {
  type = list(string)
}
