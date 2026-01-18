variable "acm_certificate_domain_name" {
  type        = string
  description = "The domain name my I provide for my ACM certificate"
  default     = null

}

variable "acm_certificate_validation_method" {
  type        = string
  description = "The validation method for my ACM certificate"
  default     = "DNS"

}

variable "acm_create_before_destroy" {
  type        = bool
  description = "Determines wether if, when a new certificate is created, is it created before destroying the previous one or after"
  default     = true

}

variable "validation_record_fqdns" {
  type    = list(string)
  default = []
}

