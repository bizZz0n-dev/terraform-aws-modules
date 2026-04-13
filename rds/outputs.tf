output "endpoint"          { value = aws_db_instance.this.endpoint }
output "port"              { value = aws_db_instance.this.port }
output "db_name"           { value = aws_db_instance.this.db_name }
output "password_ssm_path" { value = aws_ssm_parameter.db_password.name }
output "endpoint_ssm_path" { value = aws_ssm_parameter.db_endpoint.name }
