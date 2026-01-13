#VPC Variables

variable "vpc_cidr_block" {
    type = string 
    default = "10.0.0.0/16"
    description = "The CIDR block for the vpc"
  
}

variable "vpc_tags" {
    type = string
    default = "main"
    description = "Tags for the VPC"
  
}

variable "enable_dns_support" {
    default = true
    description = "Use AWS provided DNS server"
  
}

variable "enable_dns_hostnames" {
    default = true
    description = "Use AWS provided DNS server"
  
}

#First Private Subnet Variables

variable "private_subnet_1_cidr_block" {
    type = string 
    default = "10.0.1.0/24"
    description = "The CIDR block for the first private subnet"
  
}

variable "private_subnet_1_tags" {
    type = string
    default = "private-subnet-1"
    description = "Tags for the first private subnet"
  
}

# Second Private Subnet Variables

variable "private_subnet_2_cidr_block" {
    type = string 
    default = "10.0.2.0/24"
    description = "The CIDR block for the second private subnet"
  
}

variable "private_subnet_2_tags" {
    type = string
    default = "private-subnet-2"
    description = "Tags for the second private subnet"
  
}

#First Public Subnet Variables

variable "public_subnet_1_cidr_block" {
    type = string 
    default = "10.0.3.0/24"
    description = "The CIDR block for the first public subnet"
  
}

variable "public_subnet_1_tags" {
    type = string
    default = "public-subnet-1"
    description = "Tags for the first public subnet"
  
}

variable "map_public_ip_on_launch" {
    type = bool
    default = true
    description = "Resources in subnet get auto assigned public IPs"
  
}

# Second Public Subnet Variables

variable "public_subnet_2_cidr_block" {
    type = string 
    default = "10.0.4.0/24"
    description = "The CIDR block for the second public subnet"
  
}

variable "public_subnet_2_tags" {
    type = string
    default = "public-subnet-2"
    description = "Tags for the second public subnet"
  
}


# Internet Gateway Variables

variable "igw_tags" {
    type = string 
    default = "main"
    description = "Tags for the internet gateway"
  
}

# First Elastic IP address 

variable "eip_domain_1" {
    type = string 
    default = "vpc"
    description = "Domain for  first EIP"
  
}

variable "eip_tags_1" {
    type = string
    default = "nat_eip_1"
    description = "tags for the first EIP"
  
}

# Second Elastic IP address 

variable "eip_domain_2" {
    type = string 
    default = "vpc"
    description = "Domain for  second EIP"
  
}

variable "eip_tags_2" {
    type = string
    default = "nat_eip_2"
    description = "tags for the second EIP"
  
}

#First NAT Gateway variables 

variable "nat_1_tags" {
    type = string 
    default = "nat-1"
    description = "tags for the first NAT Gateway"
  
}

#Second NAT Gateway variables 

variable "nat_2_tags" {
    type = string 
    default = "nat-2"
    description = "tags for the second NAT gateway"
  
}

# Public Route table Variables 

variable "public_route_table_cidr_block" {
    type = string 
    default = "0.0.0.0/0"
    description = "Cidr block for the public route table"
  
}

variable "public_route_table_tags" {
    type = string 
    default = "public"
    description = "Tags for the public route table"
  
}

# First Private Route table Variables 

variable "private_route_table_cidr_block_1" {
    type = string 
    default = "0.0.0.0/0"
    description = "Cidr block for the first private route table"
  
}

variable "private_route_table_tags_1" {
    type = string 
    default = "first-private-route-table"
    description = "Tags for the first private route table"
  
}

# Second Private Route table Variables 

variable "private_route_table_cidr_block_2" {
    type = string 
    default = "0.0.0.0/0"
    description = "Cidr block for the second private route table"
  
}

variable "private_route_table_tags_2" {
    type = string 
    default = "second-private-route-table"
    description = "Tags for the second private route table"
  
}

#Availiability Zones 

variable "az_1" {
    type = string 
    default = "eu-west-2a"
    description = "Name of the first availability zone "
  
}

variable "az_2" {
    type = string 
    default = "eu-west-2b"
    description = "Name of the first availability zone "
  
}

