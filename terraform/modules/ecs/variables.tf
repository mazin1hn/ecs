#VPC variables

variable "vpc_id" {
  type        = string
  description = "ID of thr VPC"
  default     = null

}




#ECS Cluster variables 

variable "ecs_cluster_name" {
  type        = string
  description = "name of ECS Cluster"
  default     = null

}

variable "ecs_cluster_setting_name" {
  type        = string
  description = "name of setting of the ECS Cluster"
  default     = "containerInsights"

}


variable "ecs_cluster_setting_value" {
  type        = string
  description = "Value of setting of the ECS Cluster"
  default     = null

}

#ECS Task Definition 

variable "ecs_task_definition_family" {
  type        = string
  description = "Family of the ecs task definition"
  default     = "ecs"

}

variable "task_definition_requires_compatibilities" {
  type        = list(string)
  description = "Type of ECS Service"
  default     = ["FARGATE"]
}

variable "task_definition_network_mode" {
  type        = string
  description = "Network mode of the task definition"
  default     = "awsvpc"

}

variable "task_deinition_cpu" {
  type        = number
  description = "CPU of the task definition"
  default     = null

}

variable "task_deinition_memory" {
  type        = number
  description = "Memory of the task definition"
  default     = null

}

variable "container_name" {
  type        = string
  description = "Name of the container"
  default     = null

}

variable "image_id" {
  type        = string
  description = "ID/tag of the docker image"
  default     = null

}

variable "container_port" {
  type        = number
  description = "Port that the container is exposed to"
  default     = null

}

variable "container_definitions_protocol" {
  type        = string
  description = "Protocol defined inside container definitions"
  default     = "tcp"

}

variable "container_definitions_logDriver" {
  type        = string
  description = "Protocol defined inside container definitions"
  default     = "awslogs"

}

variable "awslogs-region" {
  type        = string
  description = "AWS logs region"
  default     = "eu-west-2"

}

variable "awslogs-stream-prefix" {
  type        = string
  description = "AWS stream prefix"
  default     = "ecs"

}

variable "task_definition_operating_system_family" {
  type        = string
  description = "The Operating System your Task definition will be using"
  default     = "LINUX"

}

variable "task_definition_cpu_architecture" {
  type        = string
  description = "The CPU architecture your Task definition will be using"
  default     = "ARM64"

}

variable "execution_role_arn" {
  type        = string
  description = "The execution role arn"
  default     = null

}

variable "task_role_arn" {
  type        = string
  description = "The task role arn"
  default     = null

}

#ECS Service variables

variable "ecs_service_name" {
  type        = string
  description = "Ecs service name"
  default     = null

}

variable "ecs_service_desired_count" {
  type        = number
  description = "Ecs service desired count"
  default     = null

}

variable "ecs_service_launch_type" {
  type        = string
  description = "Ecs service launch type"
  default     = "FARGATE"

}

variable "target_group_arn" {
  type        = string
  description = "Target group arn"

}

variable "health_check_grace_period_seconds" {
  type        = number
  description = "Stops ALB health checks killing tasks during startup"
  default     = 60
}


#ECS Service network config variables

variable "ecs_service_assign_public_ip" {
  type        = bool
  description = "Determine wether to assign public IP or not"
  default     = false

}

variable "ecs_service_subnets" {
  type        = list(string)
  description = "The private subnets for the ECS service"

}

#ECS Service load balancer variables 

variable "ecs_service_alb_container_name" {
  type        = string
  description = "Container name for our ECS service alb"
  default     = null

}

variable "ecs_service_alb_container_port" {
  type        = number
  description = "Container port for our ECS service alb"
  default     = null

}


#ECS Security Group 


variable "ecs_sg_name" {
  type        = string
  description = "Name of the ecs sg"
  default     = "ecs_sg"

}

variable "ecs_sg_description" {
  type        = string
  description = "Description of the ecs sg"
  default     = "Allow HTTP"

}


#ECS sg ingress variables

variable "ecs_sg_ingress_description" {
  type        = string
  description = "Description of the ingress rules for the ecs SG"
  default     = "Ingress rules for our security group"

}

variable "ecs_sg_ingress_from_port" {
  type        = number
  description = "(From) Port of the ingress rules for the ecs SG"
  default     = 8080

}


variable "ecs_sg_ingress_to_port" {
  type        = number
  description = "(To) Port of the ingress rules for the ecs SG"
  default     = 8080

}

variable "ecs_sg_ingress_protocol" {
  type        = string
  description = "Porotocol of Inbound SG rule for the ecs"
  default     = "tcp"

}

variable "ecs_sg_ingress_security_groups" {
  type        = string
  description = "Security Groups for the ingress rules of the ecs SG"

}

#ECS sg egress variables 

variable "ecs_sg_egress_description" {
  type        = string
  description = "Description of the egress rules for the ecs SG"
  default     = "Allow all Outbound"

}

variable "ecs_sg_egress_from_port" {
  type        = number
  description = "(From) Port of the egress rules for the ecs SG"
  default     = 0

}


variable "ecs_sg_egress_to_port" {
  type        = number
  description = "(To) Port of the egress rules for the ecs SG"
  default     = 0

}

variable "ecs_sg_egress_protocol" {
  type        = string
  description = "Porotocol of Outbound SG rule for the ecs"
  default     = "-1"

}

variable "ecs_sg_egress_cidr_blocks" {
  type        = list(string)
  description = "Cidr blocks for the egress rules of the ecs SG"
  default     = ["0.0.0.0/0"]

}

variable "HTTPS_listener_arn" {
  type        = string
  description = "The arn of the HTTPS Listener"

}

variable "aws_cloudwatch_log_group_retention_in_days" {
  type    = number
  default = 7

}