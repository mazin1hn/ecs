data "aws_ecr_repository" "ecs" {
  name = var.ecs_repository_name
  repository_url = var.ecs_repository_url
}