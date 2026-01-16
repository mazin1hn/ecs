#ACM Validation Outputs 

output "acm_certificate_record_name" {
    description = "The record name of the acm certificate"
    value =  tolist(aws_acm_certificate.ecs.domain_validation_options)[0].resource_record_name
  
}

output "acm_certificate_record_type" {
    description = "The record type of the acm certificate"
    value =  tolist(aws_acm_certificate.ecs.domain_validation_options)[0].resource_record_type
  
}

output "acm_certificate_record_value" {
    description = "The record value of the acm certificate"
    value =  tolist(aws_acm_certificate.ecs.domain_validation_options)[0].resource_record_value
  
}

output "acm_certificate_arn" {
  description = "ARN of the ACM certificate"
  value       = aws_acm_certificate.ecs.arn
}

output "acm_validated_certificate_arn" {
    description = "ARN of the ACM Validated certificate"
    value = aws_acm_certificate_validation.ecs_cert_validation.certificate_arn  
}


