#ACM : Requesting certification for domain

resource "aws_acm_certificate" "ecs" {
  domain_name       = var.acm_certificate_domain_name
  validation_method = var.acm_certificate_validation_method

  lifecycle {
    create_before_destroy = true
  }
}


#Wait till cert is issued 


resource "aws_acm_certificate_validation" "ecs_cert_validation" {
  validation_record_fqdns = var.validation_record_fqdns
  certificate_arn         = aws_acm_certificate.ecs.arn

}