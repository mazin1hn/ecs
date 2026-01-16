resource "aws_iam_role" "ecs_execution" {
  name = var.ecs_execution_role_name

 
  assume_role_policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Sid    = "AllowAccessToECSForTaskExecutionRole"
      Effect = "Allow"
      Principal = {
        Service = "ecs-tasks.amazonaws.com"
      }
      Action = "sts:AssumeRole"
    }
  ]
})

  tags = var.ecs_execution_role_tags
}


resource "aws_iam_role_policy_attachment" "ecs_execution_policy_attatchment" {
  role       = aws_iam_role.ecs_execution.name
  policy_arn = var.ecs_execution_policy_attatchment_arn
}