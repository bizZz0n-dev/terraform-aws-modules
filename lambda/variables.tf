variable "function_name" {
  type = string
}
variable "runtime" {
  type = string
  default = "python3.11"
}
variable "handler" {
  type = string
  default = "handler.lambda_handler"
}
variable "env" {
  type = string
}
variable "timeout" {
  type = number
  default = 30
}
variable "memory_size" {
  type = number
  default = 128
}
variable "source_dir" {
  type = string
  default = "src"
}
