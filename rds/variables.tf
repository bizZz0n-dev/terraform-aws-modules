variable "identifier" {
  type = string
}
variable "engine" {
  type = string
}
variable "engine_version" {
  type = string
}
variable "instance_class" {
  type = string
  default = "db.t3.medium"
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
variable "db_name" {
  type = string
  default = "appdb"
}
variable "username" {
  type = string
  default = "dbadmin"
}
variable "allocated_storage" {
  type = number
  default = 20
}
variable "multi_az" {
  type = bool
  default = false
}
