#ECS Cluster 

resource "aws_ecs_cluster" "ecs" {
  name = var.ecs_cluster_name

  setting {
    name  = var.ecs_cluster_setting_name
    value = var.ecs_cluster_setting_value
  }
}

#ECS Task Definition 

resource "aws_ecs_task_definition" "ecs" {
  family                   = var.ecs_task_definition_family
  requires_compatibilities = var.task_definition_requires_compatibilities
  network_mode             = var.task_definition_network_mode
  cpu                      = var.task_deinition_cpu
  memory                   = var.task_deinition_memory
  execution_role_arn       = var.execution_role_arn
  task_role_arn            = var.task_role_arn

  container_definitions = jsonencode([
    {
      name  = var.container_name
      image = var.image_id

      portMappings = [
        {
          containerPort = var.container_port
          protocol      = var.container_definitions_protocol
        }
      ]

      essential = true

      logConfiguration = {
        logDriver = var.container_definitions_logDriver
        options = {
          awslogs-group         = "/${var.ecs_cluster_name}/${var.ecs_task_definition_family}"
          awslogs-region        = var.awslogs-region
          awslogs-stream-prefix = var.awslogs-stream-prefix
        }
      }
    }
  ])


  runtime_platform {
    operating_system_family = var.task_definition_operating_system_family
    cpu_architecture        = var.task_definition_cpu_architecture
  }
}

resource "aws_cloudwatch_log_group" "ecs" {
  name              = "/${var.ecs_cluster_name}/${var.ecs_task_definition_family}"
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
}


#ECS Service 

resource "aws_ecs_service" "gatus" {
  name                              = var.ecs_service_name
  cluster                           = aws_ecs_cluster.ecs.id
  task_definition                   = aws_ecs_task_definition.ecs.arn
  desired_count                     = var.ecs_service_desired_count
  launch_type                       = var.ecs_service_launch_type
  health_check_grace_period_seconds = var.health_check_grace_period_seconds


  network_configuration {
    assign_public_ip = var.ecs_service_assign_public_ip
    security_groups  = [aws_security_group.ecs_sg.id]
    subnets          = var.ecs_service_subnets
  }



  load_balancer {
    target_group_arn = var.target_group_arn
    container_name   = var.ecs_service_alb_container_name
    container_port   = var.ecs_service_alb_container_port
  }

  depends_on = [var.HTTPS_listener_arn]

}


#ECS Security Group 

resource "aws_security_group" "ecs_sg" {
  name        = var.ecs_sg_name
  description = var.ecs_sg_description
  vpc_id      = var.vpc_id

  ingress {
    description     = var.ecs_sg_ingress_description
    from_port       = var.ecs_sg_ingress_from_port
    to_port         = var.ecs_sg_ingress_to_port
    protocol        = var.ecs_sg_ingress_protocol
    security_groups = [var.ecs_sg_ingress_security_groups]
  }

  egress {
    description = var.ecs_sg_egress_description
    from_port   = var.ecs_sg_egress_from_port
    to_port     = var.ecs_sg_egress_to_port
    protocol    = var.ecs_sg_egress_protocol
    cidr_blocks = var.ecs_sg_egress_cidr_blocks

  }

}
