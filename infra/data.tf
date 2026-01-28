data "aws_ecr_repository" "ecs" {
  name = var.ecs_repository_name

}
