output "service_name" {
  description = "Name of the ECS service"
  value       = aws_ecs_service.this.name
}

output "log_group_name" {
  description = "CloudWatch log group name"
  value       = aws_cloudwatch_log_group.this.name
}

output "execution_role_arn" {
  description = "IAM execution role ARN"
  value       = aws_iam_role.execution.arn
}

output "task_security_group_id" {
  description = "Security group ID attached to ECS tasks"
  value       = aws_security_group.tasks.id
}
