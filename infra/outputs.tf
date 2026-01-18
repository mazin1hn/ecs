output "ecr_repository_url" {
  description = "URL of the ECR repository"
  value       = data.aws_ecr_repository.ecs.repository_url

}

