output "ecs_cluster_id" {
  value = aws_ecs_cluster.ecs.id
}

output "ecs_service_name" {
  value = aws_ecs_service.gatus.name
}

output "ecs_service_arn" {
  value = aws_ecs_service.gatus.id
}

output "task_definition_arn" {
  value = aws_ecs_task_definition.ecs.arn
}

output "ecs_sg_id" {
  value = aws_security_group.ecs_sg.id
}
