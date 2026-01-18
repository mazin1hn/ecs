output "ecr_repository_url" {
  description = "URL of the ECR repository"
  value       = data.aws_ecr_repository.ecs.repository_url

}

output "application_url" {
  description = "URL of the application"
  value = var.acm_certificate_domain_name
  
}

output "alb_dns_name" {
  description = "DNS name for the ALB"
  value = module.alb.alb_dns_name
  
}

