#Cloudfare DNS Record Creation (Domain validation for AWS) variables

variable "domain_validation_record_zone_id" {
  type        = string
  description = "The zone ID for the DNS Record that validates my ACM"
  default     = null
}

variable "domain_validation_record_ttl" {
  type        = string
  description = "The time to live for the DNS Record that validates my ACM"
  default     = "60"
}

variable "domain_validation_record_comment" {
  type        = string
  description = "Comment for the DNS Record that validates my ACM"
  default     = "DNS Record for AWS Validation"
}

variable "domain_validation_record_proxy" {
  type        = bool
  description = "Determines wether the DNS Record that validates my ACM is proxied or not"
  default     = false
}

variable "domain_validation_name" {
  type        = string
  description = "Record name for the DNS Record that validates my ACM"
  default     = null

}

variable "domain_validation_content" {
  type        = string
  description = "Record content for the DNS Record that validates my ACM"
  default     = null

}

variable "domain_validation_type" {
  type        = string
  description = "Record type for the DNS Record that validates my ACM"
  default     = null

}


#Cloudfare DNS Record Creation (Point domain to ALB)

variable "alb_dns_record_zone_id" {
  type        = string
  description = "The zone ID for the DNS Record for my ALB"
  default     = null
}

variable "alb_dns_record_ttl" {
  type        = string
  description = "The time to live for the DNS Record for my ALB"
  default     = "60"
}

variable "alb_dns_record_type" {
  type        = string
  description = "The record type for the DNS Record for my ALB"
  default     = "CNAME"
}

variable "alb_dns_record_comment" {
  type        = string
  description = "Comment for the DNS Record for my ALB"
  default     = "DNS Record that points my domain to the ALB"
}

variable "alb_dns_record_proxy" {
  type        = bool
  description = "Determines wether the DNS Record for my ALB is proxied or not"
  default     = false
}

variable "alb_dns_record_name" {
  type        = string
  description = "Name for the DNS Record for my ALB"
  default     = ""
}

variable "alb_dns_record_content" {
  type        = string
  description = "Content(target) for the DNS Record for my ALB"
}





