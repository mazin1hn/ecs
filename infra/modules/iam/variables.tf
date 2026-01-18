variable "ecs_execution_role_name" {
  type        = string
  description = "Name of the task execution IAM role"
  default     = "ecs_execution"

}

variable "assume_role_policy_version" {
  type        = string
  description = "Version of this Policy"
  default     = "2012-10-17"

}

variable "assume_role_policy_si" {
  type        = string
  description = "Sid of this Policy"
  default     = "AllowAccessToECSForTaskExecutionRole"

}

variable "assume_role_policy_effect" {
  type        = string
  description = "Effect of this Policy"
  default     = "Allow"


}

variable "assume_role_policy_service" {
  type        = string
  description = "Service of this Policy"
  default     = "ecs-tasks.amazonaws.com"


}

variable "assume_role_policy_action" {
  type        = string
  description = "Action of this Policy"
  default     = "sts:AssumeRole"


}




variable "ecs_execution_role_tags" {
  type        = map(string)
  description = "Tags of the task execution IAM role"
  default = {
    "name" = "ecs_execution_role"
  }

}


variable "ecs_execution_policy_attatchment_arn" {
  type        = string
  description = "Attatchment Role policy of the Ecs execution"
  default     = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"

}
