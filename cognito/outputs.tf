output "user_pool_id"           { value = aws_cognito_user_pool.this.id }
output "user_pool_arn"          { value = aws_cognito_user_pool.this.arn }
output "client_id"              { value = aws_cognito_user_pool_client.this.id }
output "user_pool_id_ssm_path"  { value = aws_ssm_parameter.user_pool_id.name }
output "client_id_ssm_path"     { value = aws_ssm_parameter.client_id.name }
