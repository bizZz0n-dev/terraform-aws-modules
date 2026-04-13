output "cluster_id"               { value = aws_ecs_cluster.this.id }
output "cluster_arn"              { value = aws_ecs_cluster.this.arn }
output "cluster_name"             { value = aws_ecs_cluster.this.name }
output "task_security_group_id"   { value = aws_security_group.ecs_tasks.id }
