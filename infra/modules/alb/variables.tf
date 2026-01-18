#VPC id 

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC"
  default     = null

}


# ALB SG Variables 

variable "alb_sg_name" {
  type        = string
  description = "ALB SG name"
  default     = "alb_sg"

}


variable "alb_sg_description" {
  type        = string
  description = "ALB SG description"
  default     = "Security Group for the ALB"

}


#ALB SG  first Ingress Variables

variable "alb_sg_ingress_description" {
  type        = string
  description = "Description of the ingress rules for the ALB SG"
  default     = "Allow HTTPS"

}

variable "alb_sg_ingress_from_port" {
  type        = number
  description = "(From) Port of the ingress rules for the ALB SG"
  default     = 443

}


variable "alb_sg_ingress_to_port" {
  type        = number
  description = "(To) Port of the ingress rules for the ALB SG"
  default     = 443

}

variable "alb_sg_ingress_protocol" {
  type        = string
  description = "Porotocol of Inbound SG rule for the alb"
  default     = "tcp"

}

variable "alb_sg_ingress_cidr_blocks" {
  type        = list(string)
  description = "Cidr blocks for the ingress rules of the ALB SG"
  default     = ["0.0.0.0/0"]

}


#ALB Second Ingress variables 

variable "alb_sg_ingress_description_2" {
  type        = string
  description = "Description of the ingress rules for the ALB SG"
  default     = "Allow HTTP"

}

variable "alb_sg_ingress_from_port_2" {
  type        = number
  description = "(From) Port of the ingress rules for the ALB SG"
  default     = 80

}


variable "alb_sg_ingress_to_port_2" {
  type        = number
  description = "(To) Port of the ingress rules for the ALB SG"
  default     = 80

}

variable "alb_sg_ingress_protocol_2" {
  type        = string
  description = "Porotocol of Inbound SG rule for the alb"
  default     = "tcp"

}

variable "alb_sg_ingress_cidr_blocks_2" {
  type        = list(string)
  description = "Cidr blocks for the ingress rules of the ALB SG"
  default     = ["0.0.0.0/0"]

}

#ALB Egress Variables 

variable "alb_sg_egress_description" {
  type        = string
  description = "Description of the egress rules for the ALB SG"
  default     = "Allow Outbound"

}

variable "alb_sg_egress_from_port" {
  type        = number
  description = "(From) Port of the egress rules for the ALB SG"
  default     = 0

}


variable "alb_sg_egress_to_port" {
  type        = number
  description = "(To) Port of the egress rules for the ALB SG"
  default     = 0

}

variable "alb_sg_egress_protocol" {
  type        = string
  description = "Porotocol of Outbound SG rule for the alb"
  default     = "-1"

}

variable "alb_sg_egress_cidr_blocks" {
  type        = list(string)
  description = "Cidr blocks for the egress rules of the ALB SG"
  default     = ["0.0.0.0/0"]

}


#ALB Variable

variable "alb_name" {
  type        = string
  description = "Name of the alb"
  default     = null

}

variable "internal_lb" {
  type        = bool
  description = "Describes wether the load balancer is internet facing or not"
  default     = null

}

variable "public_subnet_ids" {
  type        = list(string)
  description = "List of public subnet IDs"
  default     = null

}

variable "lb_type" {
  type        = string
  description = "Determines the load balancer type"
  default     = "application"

}

variable "drop_invalid_header_fields" {
  type        = bool
  description = "ALB will silently drop malformed or non-RFC-compliant HTTP headers instead of forwarding them"
  default     = true

}


#ALB Target Group Variables 

variable "alb_tg_name" {
  type        = string
  description = "Name of the target group"
  default     = "alb-tg"
}

variable "alb_tg_port" {
  type        = number
  description = "Target Group port"
  default     = 8080

}

variable "alb_tg_protocol" {
  type        = string
  description = "Target Group protocol"
  default     = "HTTP"

}

variable "alb_tg_target_type" {
  type        = string
  description = "Target Group target type"
  default     = "ip"

}


#HTTPS Listener 

variable "HTTPS_listener_port" {
  type        = number
  description = "Port of the HTTPS Listener"
  default     = 443

}

variable "HTTPS_listener_protocol" {
  type        = string
  description = "Protocol of the HTTPS Listener"
  default     = "HTTPS"

}

variable "HTTPS_listener_ssl_policy" {
  type        = string
  description = "SSL Policy of the HTTPS Listener"
  default     = "ELBSecurityPolicy-TLS13-1-2-2021-06"

}

variable "HTTPS_listener_certificate_arn" {
  type        = string
  description = "Certificate arn of the HTTPS Listener"

}

variable "HTTPS_listener_default_action_type" {
  type        = string
  description = "Default action of the HTTPS Listener"
  default     = "forward"

}


#HTTP Listener

variable "HTTP_listener_port" {
  type        = number
  description = "Port of the HTTP Listener"
  default     = 80
}

variable "HTTP_listener_protocol" {
  type        = string
  description = "Protocol of the HTTP Listener"
  default     = "HTTP"

}

variable "HTTP_listener_default_action_type" {
  type        = string
  description = "Default action of the HTTP Listener"
  default     = "redirect"

}

#HTTP Listener redirect

variable "HTTP_listener_redirect_port" {
  type        = string
  description = "Port of the redirect action of the HTTP Listener"
  default     = "443"
}

variable "HTTP_listener_redirect_protocol" {
  type        = string
  description = "Protocol of the redirect action of the HTTP Listener"
  default     = "HTTPS"

}

variable "HTTP_listener_redirect_status_code" {
  type        = string
  description = "Status code of the redirect action of the HTTP Listener"
  default     = "HTTP_301"

}








