output "target_group_arn" {
    description = "arn of the target group"
    value = aws_lb_target_group.alb_tg.arn
  
}

output "alb_sg_id" {
    description = "ID of the ALB SG"
    value = aws_security_group.alb_sg.id
  
}

output "alb_dns_name" {
    description = "DNS name of the ALB"
    value = aws_lb.ecs.dns_name 
  
}

output "HTTPS_listener_arn" {
    description = "ARN of the HTTPS Listener"
    value = aws_lb_listener.HTTPS.arn
  
}