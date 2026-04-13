variable "user_pool_name" {
  type = string
}
variable "env" {
  type = string
}
variable "auto_verified_attributes" {
  type = list(string)
  default = ["email"]
}
