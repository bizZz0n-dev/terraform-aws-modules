output "instance_id"        { value = aws_instance.this.id }
output "private_ip"         { value = aws_instance.this.private_ip }
output "public_ip"          { value = aws_eip.this.public_ip }
output "elastic_ip"         { value = aws_eip.this.public_ip }
output "security_group_id"  { value = aws_security_group.this.id }
output "key_name"            { value = aws_key_pair.this.key_name }
output "elastic_ip_ssm_path" { value = aws_ssm_parameter.elastic_ip.name }
