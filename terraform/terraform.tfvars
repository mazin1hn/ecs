#Root variable values 

project_name = "gatus"

#Provider config

aws_region = "eu-west-2"

cloudflare_api_token = "b56NtpAibM1ydToeokJOxo1IzzCdrx9gnq5BxNNJ"

#Data.tf

ecs_repository_name = "ecs"







#VPC Module 

#VPC 

vpc_cidr_block = "10.0.0.0/16"



#Subnets

private_subnet_1_cidr_block = "10.0.1.0/24"

private_subnet_2_cidr_block = "10.0.2.0/24"

public_subnet_1_cidr_block = "10.0.3.0/24"

public_subnet_2_cidr_block = "10.0.4.0/24"



#Availability Zones 

az_1 = "eu-west-2a"

az_2 = "eu-west-2b"


#Load Balancer

internal_lb = false

#ECS Cluster 

ecs_cluster_setting_value = "enabled"

#ECS Task Definition

task_deinition_cpu = 256

task_deinition_memory = 512


container_name = "gatus-ecs-container"
image_id       = "678536383905.dkr.ecr.eu-west-2.amazonaws.com/ecs@sha256:18e25249047dd646694956fe078015e16c678ffb1af4071ee208dd6e439df56d"
container_port = 8080


#ECS Service 


ecs_service_desired_count = 2

ecs_service_alb_container_port = 8080


#ACM Module 

acm_certificate_domain_name = "tm.mazin1hn.uk"


#DNS Module 

#AWS Validation DNS Record 

domain_validation_record_zone_id = "4eb865c8c5349ae53c92f7bdac9f91da"


#ALB -> Domain DNS Record 

alb_dns_record_zone_id = "4eb865c8c5349ae53c92f7bdac9f91da"

alb_dns_record_name = "tm"




