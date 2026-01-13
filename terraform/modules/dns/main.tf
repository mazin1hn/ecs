#Cloudfare DNS Record Creation (Domain validation for AWS)
 

resource "cloudflare_dns_record" "domain_validation_record" {
  zone_id = var.domain_validation_record_zone_id
  name = var.domain_validation_name
  content = var.domain_validation_content
  ttl = var.domain_validation_record_ttl
  type = var.domain_validation_type
  comment = var.domain_validation_record_comment
  proxied = var.domain_validation_record_proxy

}


#Cloudfare DNS Record Creation (Point domain to ALB)

resource "cloudflare_dns_record" "alb_dns_record" {
    zone_id = var.alb_dns_record_zone_id
    name = var.alb_dns_record_name
    content = var.alb_dns_record_content
    ttl = var.alb_dns_record_ttl
    type = var.alb_dns_record_type
    comment = var.alb_dns_record_comment
    proxied = var.alb_dns_record_proxy
}