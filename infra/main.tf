terraform {
  required_version = "= 1.14.3"
}


module "vpc" {
  source = "./modules/vpc"

  vpc_cidr_block              = var.vpc_cidr_block
  private_subnet_1_cidr_block = var.private_subnet_1_cidr_block
  private_subnet_2_cidr_block = var.private_subnet_2_cidr_block
  public_subnet_1_cidr_block  = var.public_subnet_1_cidr_block
  public_subnet_2_cidr_block  = var.public_subnet_2_cidr_block
  az_1                        = var.az_1
  az_2                        = var.az_2
}


module "alb" {
  source = "./modules/alb"

  internal_lb = var.internal_lb
  alb_name    = "${var.project_name}-alb"

  vpc_id                         = module.vpc.vpc_id
  public_subnet_ids              = module.vpc.public_subnet_ids
  HTTPS_listener_certificate_arn = module.acm.acm_validated_certificate_arn



}


module "iam" {
  source = "./modules/iam"


}


module "ecs" {
  source = "./modules/ecs"

  ecs_cluster_name          = "${var.project_name}-ecs-cluster"
  ecs_cluster_setting_value = var.ecs_cluster_setting_value

  ecs_service_name               = "${var.project_name}-ecs-service"
  ecs_service_alb_container_name = "${var.project_name}-ecs-container"
  ecs_service_desired_count      = var.ecs_service_desired_count
  ecs_service_alb_container_port = var.ecs_service_alb_container_port

  task_deinition_cpu    = var.task_deinition_cpu
  task_deinition_memory = var.task_deinition_memory

  container_port = var.container_port
  image_id = "${data.aws_ecr_repository.ecs.repository_url}:${var.image_tag}"
  container_name = var.container_name
  



  vpc_id                         = module.vpc.vpc_id
  execution_role_arn             = module.iam.ecs_execution_role_arn
  target_group_arn               = module.alb.target_group_arn
  ecs_sg_ingress_security_groups = module.alb.alb_sg_id
  ecs_service_subnets            = module.vpc.private_subnet_ids
  HTTPS_listener_arn             = module.alb.HTTPS_listener_arn
  depends_on                     = [module.acm]


}

module "acm" {
  source = "./modules/acm"

  acm_certificate_domain_name = var.acm_certificate_domain_name
  validation_record_fqdns     = module.dns.validation_record_fqdns

}

module "dns" {
  source = "./modules/dns"

  domain_validation_record_zone_id = var.domain_validation_record_zone_id
  alb_dns_record_zone_id           = var.alb_dns_record_zone_id
  alb_dns_record_name              = var.alb_dns_record_name

  alb_dns_record_content    = module.alb.alb_dns_name
  domain_validation_name    = module.acm.acm_certificate_record_name
  domain_validation_content = module.acm.acm_certificate_record_value
  domain_validation_type    = module.acm.acm_certificate_record_type

}
