variable "name" {
  type = string
}
variable "instance_type" {
  type = string
  default = "t3.medium"
}
variable "env" {
  type = string
}
variable "vpc_id" {
  type = string
}
variable "subnet_id" {
  type = string
}
variable "ami_id" {
  type = string
  default = ""
}

variable "ssh_public_key" {
  description = "SSH public key content for EC2 access"
  type        = string
}

variable "allowed_ssh_cidrs" {
  description = "CIDR blocks allowed to SSH into the instance"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "allowed_https_cidrs" {
  description = "CIDR blocks allowed to reach HTTP/HTTPS"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
