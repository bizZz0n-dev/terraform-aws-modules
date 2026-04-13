terraform {
  required_version = ">= 1.3.0"
  backend "s3" {}
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 5.0" }
  }
}

resource "aws_cognito_user_pool" "this" {
  name                     = var.user_pool_name
  auto_verified_attributes = var.auto_verified_attributes
  password_policy {
    minimum_length    = 8
    require_uppercase = true
    require_lowercase = true
    require_numbers   = true
    require_symbols   = false
  }
  tags = { Env = var.env }
}

resource "aws_cognito_user_pool_client" "this" {
  name         = "${var.user_pool_name}-client"
  user_pool_id = aws_cognito_user_pool.this.id
  explicit_auth_flows = [
    "ALLOW_USER_PASSWORD_AUTH",
    "ALLOW_REFRESH_TOKEN_AUTH",
    "ALLOW_USER_SRP_AUTH",
  ]
}

resource "aws_ssm_parameter" "user_pool_id" {
  name  = "/${var.env}/${var.user_pool_name}/cognito-user-pool-id"
  type  = "String"
  value = aws_cognito_user_pool.this.id
  tags  = { Env = var.env }
}

resource "aws_ssm_parameter" "client_id" {
  name  = "/${var.env}/${var.user_pool_name}/cognito-client-id"
  type  = "String"
  value = aws_cognito_user_pool_client.this.id
  tags  = { Env = var.env }
}
