#ACM : Requesting certification for domain

resource "aws_acm_certificate" "ecs" {
  domain_name       = var.acm_certificate_domain_name
  validation_method = var.acm_certificate_validation_method

  lifecycle {
    create_before_destroy = var.acm_create_before_destroy
  }
}


#Wait till cert is issued 


resource "aws_acm_certificate_validation" "ecs-cert-validation" {
    validation_record_fqdns = [ cloudflare_dns_record.domain_validation_record.name ]
    certificate_arn = aws_acm_certificate.ecs.arn
  
}