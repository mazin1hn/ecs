#VPC Outputs 

output "vpc_id" {
    description = "The ID of the VPC"
    value = aws_vpc.ecs.id

  
}

#First EIP ouputs 
output "eip_allocation_id_1" {
    description = "Allocation ID of the first elastic IP address"
    value = aws_eip.nat_eip_1.allocation_id
  
}

#First EIP ouputs 
output "eip_allocation_id_2" {
    description = "Allocation ID of the second elastic IP address"
    value = aws_eip.nat_eip_2.allocation_id
  
}

#First Public Subnet outputs

output "public_subnet_1_id" {
    description = "The ID of the first public subnet"
    value = aws_subnet.public_subnet_1.id
  
}


#Second Public Subnet ouputs 

output "public_subnet_2_id" {
    description = "The ID of the second public subnet"
    value = aws_subnet.public_subnet_2.id
}

#First Private Subnet outputs 

output "private_subnet_id_1" {
    description = "The ID of the first private subnet"
    value = aws_subnet.private_subnet_1.id
  
}

#Seconf Private Subnet outputs 

output "private_subnet_id_2" {
    description = "The ID of the second private subnet"
    value = aws_subnet.private_subnet_2.id
  
}

#Public Route Table outputs 

output "public_route_table_id" {
    description = "The ID of the public route table"
    value = aws_route_table.public.id
  
}


#First Private Route Table outputs 

output "private_route_table_1_id" {
    description = "The ID of the first private route table"
    value = aws_route_table.private_1.id
  
}

#Second Private Route Table outputs 

output "private_route_table_2_id" {
    description = "The ID of the second private route table"
    value = aws_route_table.private_2.id
  
}

#Public and Private Subnet Outputs (for inputs - list) (ones above mainly for debugging)

output "public_subnet_ids" {
    description = "The IDS of both public subnets"
    value = [ 
        aws_subnet.public_subnet_1.id,
        aws_subnet.public_subnet_2.id ]
  
}

output "private_subnet_ids" {
    description = "The IDS of both private subnets"
    value = [ 
        aws_subnet.private_subnet_1.id,
        aws_subnet.private_subnet_2.id ]
}

