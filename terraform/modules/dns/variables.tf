#Cloudfare DNS Record Creation (Domain validation for AWS) variables

variable "domain_validation_record_zone_id" {
  type = string 
  description = "The zone ID for the DNS Record that validates my ACM"
}

variable "domain_validation_record_ttl" {
  type = string
  description = "The time to live for the DNS Record that validates my ACM"
}

variable "domain_validation_record_comment" {
  type = string 
  description = "Comment for the DNS Record that validates my ACM"
}

variable "domain_validation_record_proxy" {
  type = bool
  description = "Determines wether the DNS Record that validates my ACM is proxied or not"
}


#Cloudfare DNS Record Creation (Point domain to ALB)

variable "alb_dns_record_zone_id" {
  type = string 
  description = "The zone ID for the DNS Record for my ALB"
}

variable "alb_dns_record_ttl" {
  type = string
  description = "The time to live for the DNS Record for my ALB"
}

variable "alb_dns_record_type" {
  type = string 
  description = "The record type for the DNS Record for my ALB"
}

variable "alb_dns_record_comment" {
  type = string 
  description = "Comment for the DNS Record for my ALB"
}

variable "alb_dns_record_proxy" {
  type = bool
  description = "Determines wether the DNS Record for my ALB is proxied or not"
}

variable "alb_dns_record_name" {
  type = string 
  description = "Name for the DNS Record for my ALB"
}

variable "alb_dns_record_content" {
  type = string 
  description = "Content(target) for the DNS Record for my ALB"
}



 

