output "validation_record_fqdns" {
    description = "The domain name used in the Cloudfare CNAME record for validation"
    value = [ cloudflare_dns_record.domain_validation_record.name ]
  
}