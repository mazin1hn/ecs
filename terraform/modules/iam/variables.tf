variable "ecs_execution_role_name" {
    type = string 
    description = "Name of the task execution IAM role"
  
}

variable "ecs_execution_assume_role_policy" {
    type = string 
    description = "Assume Role policy of the Ecs execution"
  
}

variable "ecs_execution_role_tags" {
    type = string 
    description = "Tags of the task execution IAM role"
  
}


variable "ecs_execution_policy_attatchment_arn" {
    type = string 
    description = "Attatchment Role policy of the Ecs execution"
  
}
