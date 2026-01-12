#VPC Outputs 

output "vpc_id" {
    description = "The ID of the VPC"
    value = aws_vpc.ecs.id

  
}

#First EIP ouputs 
output "eip_id_1" {
    description = "Allocation ID of the first elastic IP address"
    value = aws_eip.nat_eip_1.id
  
}

#First Public Subnet outputs

output "public_subnet_1_id" {
    description = "The ID of the first public subnet"
    value = aws_subnet.public-subnet-1.id
  
}


#Second Public Subnet ouputs 

output "public_subnet_2_id" {
    description = "The ID of the second public subnet"
    value = aws_subnet.public-subnet-2.id
}


#Public Route Table outputs 

output "public_route_table_id" {
    description = "The ID of the public route table"
    value = aws_route_table.public
  
}


#First Private Route Table outputs 

output "private_route_table_1_id" {
    description = "The ID of the first private route table"
    value = aws_route_table.private_1
  
}

#Second Private Route Table outputs 

output "private_route_table_2_id" {
    description = "The ID of the second private route table"
    value = aws_route_table.private_2
  
}
