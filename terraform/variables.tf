#Root Variables

#Provider.tf Variables 

#Required providers

variable "aws_source" {
    type = string
    description = "AWS provider source"
  
}

variable "aws_version" {
    type = string
    description = "AWS version"
  
}

variable "cloudflare_source" {
    type = string
    description = "Cloudfare provider source"
  
}

variable "cloudflare_version" {
    type = string
    description = "Cloudfare version"
  
}




#Provider config

variable "aws_region" {
    type = string 
    description = "The region we use for AWS"
  
}



variable "cloudflare_api_token" {
    type = string 
    description = "Cloudfare API token"
    sensitive = true 
  
}


#Data.tf Variables 

#ECR Variables

variable "ecs_repository_name" {
    type = string 
    description = "Name of ecr repository"
  
}

variable "ecs_repository_url" {
    type = string 
    description = "URL of ecr repository"
  
}

#Backend.tf Variables 

#Backend Variables 

variable "backend_name" {
    type = string 
    description = "S3 Bucket name"
  
}

variable "backend_key" {
    type = string
    description = "Path to S3 remote state"
  
}

variable "backend_region" {
    type = string 
    description = "Region of Backend"
  
}

variable "backend_dynamodb_table" {
    type = string
    description = "Name of DynamoDB Table"
  
}

variable "backend_encrypt" {
    type = bool
    description = "Wether backend encryption toggle is on or not"
  
}


#VPC Variables

variable "vpc_cidr_block" {
    type = string 
    default = ""
    description = "The CIDR block for the vpc"
  
}

variable "private_subnet_1_cidr_block" {
    type = string 
    default = ""
    description = "The CIDR block for the first private subnet"
  
}

variable "private_subnet_2_cidr_block" {
    type = string 
    default = ""
    description = "The CIDR block for the second private subnet"
  
}

variable "public_subnet_1_cidr_block" {
    type = string 
    default = ""
    description = "The CIDR block for the first public subnet"
  
}

variable "public_subnet_2_cidr_block" {
    type = string 
    default = ""
    description = "The CIDR block for the second public subnet"
  
}

variable "az_1" {
    type = string 
    default = ""
    description = "Name of the first availability zone "
  
}

variable "az_2" {
    type = string 
    default = ""
    description = "Name of the first availability zone "
  
}

#ALB 

variable "internal_lb" {
    type = bool
    description = "Describes wether the load balancer is internet facing or not"
    default = null
  
}

variable "project_name" {
    type = string 
    default = ""
  
}

#ECS

variable "ecs_cluster_setting_value" {
    type = string 
    description = "Value of setting of the ECS Cluster"
    default = ""
}


variable "ecs_service_name" {
    type = string 
    description = "Ecs service name"
  
}

variable "ecs_service_alb_container_name" {
    type = string 
    description = "Container name for our ECS service alb"
  
}

variable "ecs_service_desired_count" {
    type = number
    description = "Ecs service desired count"
    default = null
  
}

variable "ecs_service_alb_container_port" {
    type = number
    description = "Container port for our ECS service alb"
    default = null
  
}

variable "acm_certificate_domain_name" {
    type = string 
    description = "The domain name my I provide for my ACM certificate"
    default = ""
  
}

variable "domain_validation_record_zone_id" {
  type = string 
  description = "The zone ID for the DNS Record that validates my ACM"
  default = ""
}

variable "alb_dns_record_zone_id" {
  type = string 
  description = "The zone ID for the DNS Record for my ALB"
  default = ""
}

variable "alb_dns_record_name" {
  type = string 
  description = "Name for the DNS Record for my ALB"
  default = ""
}

variable "task_deinition_cpu" {
    type = number
    description = "CPU of the task definition"
    default = null
  
}

variable "task_deinition_memory" {
    type = number
    description = "Memory of the task definition"
    default = null
  
}

variable "task_definition_container_definition" {
    type = string 
    description = "Container definition (JSON) of the task definition"
    default = ""
    
  
}

variable "container_name" {
    type = string
    description = "Name of the container"
    default = ""
  
}

variable "image_id" {
    type = string
    description = "ID/tag of the docker image"
    default = ""
  
}

variable "container_port" {
    type = number
    description = "Port that the container is exposed to"
    default = null
  
}

