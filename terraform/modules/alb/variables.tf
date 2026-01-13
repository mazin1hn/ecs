#VPC id 

variable "vpc_id" {
    type = string 
    description = "The ID of the VPC"
  
}


# ALB SG Variables 

variable "alb_sg_name" {
    type = string 
    description = "ALB SG name"
  
}


variable "alb_sg_description" {
    type = string 
    description = "ALB SG description"
  
}


#ALB SG  first Ingress Variables

variable "alb_sg_ingress_description" {
    type = string 
    description = "Description of the ingress rules for the ALB SG"
  
}

variable "alb_sg_ingress_from_port" {
    type = number
    description = "(From) Port of the ingress rules for the ALB SG"
  
}


variable "alb_sg_ingress_to_port" {
    type = number
    description = "(To) Port of the ingress rules for the ALB SG"
  
}

variable "alb_sg_ingress_protocol" {
    type = string
    description = "Porotocol of Inbound SG rule for the alb"
  
}

variable "alb_sg_ingress_cidr_blocks" {
    type = list(string) 
    description = "Cidr blocks for the ingress rules of the ALB SG"
  
}


#ALB Second Ingress variables 

variable "alb_sg_ingress_description_2" {
    type = string 
    description = "Description of the ingress rules for the ALB SG"
  
}

variable "alb_sg_ingress_from_port_2" {
    type = number
    description = "(From) Port of the ingress rules for the ALB SG"
  
}


variable "alb_sg_ingress_to_port_2" {
    type = number
    description = "(To) Port of the ingress rules for the ALB SG"
  
}

variable "alb_sg_ingress_protocol_2" {
    type = string
    description = "Porotocol of Inbound SG rule for the alb"
  
}

variable "alb_sg_ingress_cidr_blocks_2" {
    type = list(string) 
    description = "Cidr blocks for the ingress rules of the ALB SG"
  
}

#ALB Egress Variables 

variable "alb_sg_egress_description" {
    type = string 
    description = "Description of the egress rules for the ALB SG"
  
}

variable "alb_sg_egress_from_port" {
    type = number
    description = "(From) Port of the egress rules for the ALB SG"
  
}


variable "alb_sg_egress_to_port" {
    type = number
    description = "(To) Port of the egress rules for the ALB SG"
  
}

variable "alb_sg_egress_protocol" {
    type = string
    description = "Porotocol of Outbound SG rule for the alb"
  
}

variable "alb_sg_egress_cidr_blocks" {
    type = list(string) 
    description = "Cidr blocks for the egress rules of the ALB SG"
  
}


#ALB Variable

variable "alb_name" {
    type = string 
    description = "Name of the alb"
  
}

variable "internal_lb" {
    type = bool
    description = "Describes wether the load balancer is internet facing or not"
  
}

variable "lb_type" {
    type = string 
    description = "Determines the load balancer type"
  
}

variable "drop_invalid_header_fields" {
    type = bool
    description = "ALB will silently drop malformed or non-RFC-compliant HTTP headers instead of forwarding them"
  
}


#ALB Target Group Variables 

variable "alb_tg_name" {
    type = string
    description = "Name of the target group"   
}

variable "alb_tg_port" {
    type = number 
    description = "Target Group port"
  
}

variable "alb_tg_protocol" {
    type = string
    description = "Target Group protocol"
  
}

variable "alb_tg_target_type" {
    type = string
    description = "Target Group target type"
  
}


#HTTPS Listener 

variable "HTTPS_listener_port" {
    type = number 
    description = "Port of the HTTPS Listener"
  
}

variable "HTTPS_listener_protocol" {
    type = string
    description = "Protocol of the HTTPS Listener"
  
}

variable "HTTPS_listener_ssl_policy" {
    type = string
    description = "SSL Policy of the HTTPS Listener"
  
}

variable "HTTPS_listener_certificate_arn" {
    type = string
    description = "Certificate arn of the HTTPS Listener"
  
}

variable "HTTPS_listener_default_action_type" {
    type = string 
    description = "Default action of the HTTPS Listener"
  
}


#HTTP Listener

variable "HTTP_listener_port" {
    type = number 
    description = "Port of the HTTP Listener"
}

variable "HTTP_listener_protocol" {
    type = string
    description = "Protocol of the HTTP Listener"
  
}

variable "HTTP_listener_default_action_type" {
    type = string 
    description = "Default action of the HTTP Listener"
  
}

#HTTP Listener redirect

variable "HTTP_listener_redirect_port" {
    type = string 
    description = "Port of the redirect action of the HTTP Listener"
}

variable "HTTP_listener_redirect_protocol" {
    type = string
    description = "Protocol of the redirect action of the HTTP Listener"
  
}

variable "HTTP_listener_redirect_status_code" {
    type = string
    description = "Status code of the redirect action of the HTTP Listener"
  
}








variable "public_subnet_ids" {
    type = list(string)
    description = "List of public subnet IDs"
  
}