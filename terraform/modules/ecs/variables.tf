#VPC variables

variable "vpc_id" {
    type = string
    description = "ID of thr VPC"
  
}




#ECS Cluster variables 

variable "ecs_cluster_name" {
    type = string 
    description = "name of ECS Cluster"
  
}

variable "ecs_cluster_setting_name" {
    type = string 
    description = "name of setting of the ECS Cluster"
  
}


variable "ecs_cluster_setting_value" {
    type = string 
    description = "Value of setting of the ECS Cluster"
  
}

#ECS Task Definition 

variable "ecs_task_definition_family" {
    type = string 
    description = "Family of the ecs task definition"
  
}

variable "task_definition_requires_compatibilities" {
  type = list(string)
  description = "Type of ECS Service"
}

variable "task_definition_network_mode" {
    type = string 
    description = "Network mode of the task definition"
  
}

variable "task_deinition_cpu" {
    type = number
    description = "CPU of the task definition"
  
}

variable "task_deinition_memory" {
    type = number
    description = "Memory of the task definition"
  
}

variable "task_definition_container_definition" {
    type = string 
    description = "Container definition (JSON) of the task definition"
  
}


variable "task_definition_operating_system_family" {
    type = string 
    description = "The Operating System your Task definition will be using"
    default = "LINUX"
  
}

variable "task_definition_cpu_architecture" {
    type = string 
    description = "The CPU architecture your Task definition will be using"
    default = "ARM64"
  
}

variable "execution_role_arn" {
    type = string
    description = "The execution role arn"
  
}

variable "task_role_arn" {
    type = string 
    description = "The task role arn"
    default = null
  
}

#ECS Service variables

variable "ecs_service_name" {
    type = string 
    description = "Ecs service name"
  
}

variable "ecs_service_desired_count" {
    type = number
    description = "Ecs service desired count"
  
}

variable "ecs_service_launch_type" {
    type = string 
    description = "Ecs service launch type"
  
}

variable "target_group_arn" {
    type = string
    description = "Target group arn"
  
}

variable "health_check_grace_period_seconds" {
    type = number 
    description = "Stops ALB health checks killing tasks during startup"
    default = 60
}

variable "https_listener_arn" {
  type        = string
  description = "HTTPS listener arn so ECS waits for it"
}

#ECS Service network config variables

variable "ecs_service_assign_public_ip" {
    type = bool
    description = "Determine wether to assign public IP or not"
  
}

variable "ecs_service_subnets" {
    type = list(string)
    description = "The private subnets for the ECS service"
  
}

#ECS Service load balancer variables 

variable "ecs_service_alb_container_name" {
    type = string 
    description = "Container name for our ECS service alb"
  
}

variable "ecs_service_alb_container_port" {
    type = number
    description = "Container port for our ECS service alb"
  
}


#ECS Security Group 


variable "ecs_sg_name" {
    type = string 
    description = "Name of the ecs sg"
  
}

variable "ecs_sg_description" {
    type = string
    description = "Description of the ecs sg"
  
}


#ECS sg ingress variables

variable "ecs_sg_ingress_description" {
    type = string 
    description = "Description of the ingress rules for the ecs SG"
  
}

variable "ecs_sg_ingress_from_port" {
    type = number
    description = "(From) Port of the ingress rules for the ecs SG"
  
}


variable "ecs_sg_ingress_to_port" {
    type = number
    description = "(To) Port of the ingress rules for the ecs SG"
  
}

variable "ecs_sg_ingress_protocol" {
    type = string
    description = "Porotocol of Inbound SG rule for the ecs"
  
}

variable "ecs_sg_ingress_security_groups" {
    type = list(string) 
    description = "Security Groups for the ingress rules of the ecs SG"
  
}

#ECS sg egress variables 

variable "ecs_sg_egress_description" {
    type = string 
    description = "Description of the egress rules for the ecs SG"
  
}

variable "ecs_sg_egress_from_port" {
    type = number
    description = "(From) Port of the egress rules for the ecs SG"
  
}


variable "ecs_sg_egress_to_port" {
    type = number
    description = "(To) Port of the egress rules for the ecs SG"
  
}

variable "ecs_sg_egress_protocol" {
    type = string
    description = "Porotocol of Outbound SG rule for the ecs"
  
}

variable "ecs_sg_egress_cidr_blocks" {
    type = list(string) 
    description = "Cidr blocks for the egress rules of the ecs SG"
  
}

