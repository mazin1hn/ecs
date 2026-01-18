resource "aws_iam_role" "ecs_execution" {
  name = var.ecs_execution_role_name


  assume_role_policy = jsonencode({
    Version = var.assume_role_policy_version
    Statement = [
      {
        Sid    = var.assume_role_policy_sid
        Effect = var.assume_role_policy_effect
        Principal = {
          Service = var.assume_role_policy_service
        }
        Action = var.assume_role_policy_action
      }
    ]
  })

  tags = var.ecs_execution_role_tags
}


resource "aws_iam_role_policy_attachment" "ecs_execution_policy_attatchment" {
  role       = aws_iam_role.ecs_execution.name
  policy_arn = var.ecs_execution_policy_attatchment_arn
}