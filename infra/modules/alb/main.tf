# ALB Security Group

resource "aws_security_group" "alb_sg" {
  name        = var.alb_sg_name
  description = var.alb_sg_description
  vpc_id      = var.vpc_id

  tags = {
    Name = var.alb_sg_name
  }


  ingress {
    description = var.alb_sg_ingress_description
    from_port   = var.alb_sg_ingress_from_port
    to_port     = var.alb_sg_ingress_to_port
    protocol    = var.alb_sg_ingress_protocol
    cidr_blocks = var.alb_sg_ingress_cidr_blocks

  }


  ingress {
    description = var.alb_sg_ingress_description_2
    from_port   = var.alb_sg_ingress_from_port_2
    to_port     = var.alb_sg_ingress_to_port_2
    protocol    = var.alb_sg_ingress_protocol_2
    cidr_blocks = var.alb_sg_ingress_cidr_blocks_2

  }


  egress {
    description = var.alb_sg_egress_description
    from_port   = var.alb_sg_egress_from_port
    to_port     = var.alb_sg_egress_to_port
    protocol    = var.alb_sg_egress_protocol
    cidr_blocks = var.alb_sg_egress_cidr_blocks

  }

}

# ALB

resource "aws_lb" "ecs" {
  name                       = var.alb_name
  internal                   = var.internal_lb
  load_balancer_type         = var.lb_type
  security_groups            = [aws_security_group.alb_sg.id]
  subnets                    = var.public_subnet_ids
  drop_invalid_header_fields = var.drop_invalid_header_fields
}

# ALB Target Group 

resource "aws_lb_target_group" "alb_tg" {
  name        = var.alb_tg_name
  port        = var.alb_tg_port
  protocol    = var.alb_tg_protocol
  target_type = var.alb_tg_target_type
  vpc_id      = var.vpc_id
}


# HTTPS Listener 

resource "aws_lb_listener" "HTTPS" {
  load_balancer_arn = aws_lb.ecs.arn
  port              = var.HTTPS_listener_port
  protocol          = var.HTTPS_listener_protocol
  ssl_policy        = var.HTTPS_listener_ssl_policy
  certificate_arn   = var.HTTPS_listener_certificate_arn

  default_action {
    type             = var.HTTPS_listener_default_action_type
    target_group_arn = aws_lb_target_group.alb_tg.arn
  }
}


# HTTP Listener Redirect 

resource "aws_lb_listener" "HTTP" {
  load_balancer_arn = aws_lb.ecs.arn
  port              = var.HTTP_listener_port
  protocol          = var.HTTP_listener_protocol

  default_action {
    type = var.HTTP_listener_default_action_type

    redirect {
      port        = var.HTTP_listener_redirect_port
      protocol    = var.HTTP_listener_redirect_protocol
      status_code = var.HTTP_listener_redirect_status_code
    }
  }
}