resource "aws_iam_role" "ecs_execution" {
  name = var.ecs_execution_role_name

 
  assume_role_policy = var.ecs_execution_assume_role_policy

  tags = var.ecs_execution_role_tags
}


resource "aws_iam_role_policy_attachment" "ecs_execution_policy_attatchment" {
  role       = aws_iam_role.ecs_execution.name
  policy_arn = var.ecs_execution_policy_attatchment_arn
}