output "ecs_execution_role_arn" {
  description = "The arn of the ecs execution role"
  value       = aws_iam_role.ecs_execution.arn
}