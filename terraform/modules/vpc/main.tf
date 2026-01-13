# VPC

resource "aws_vpc" "ecs" {
  cidr_block = var.vpc_cidr_block
  enable_dns_support = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = {
    Name = var.vpc_tags
  }
}

# Private Subnets

resource "aws_subnet" "private_subnet_1" {
    vpc_id = aws_vpc.ecs.id
    cidr_block = var.private_subnet_1_cidr_block
     availability_zone       = var.az_1


    tags = {
    Name = var.private_subnet_1_tags
  }

  
}

resource "aws_subnet" "private_subnet_2" {
    vpc_id = aws_vpc.ecs.id
    cidr_block = var.private_subnet_2_cidr_block
    availability_zone       = var.az_2

    tags = {
    Name = var.private_subnet_2_tags
  }

  
}

#Public subnets

resource "aws_subnet" "public_subnet_1" {
    vpc_id = aws_vpc.ecs.id
    cidr_block = var.public_subnet_1_cidr_block
    availability_zone       = var.az_1
    map_public_ip_on_launch = var.map_public_ip_on_launch

    tags = {
    Name = var.public_subnet_1_tags
  }

  
}

resource "aws_subnet" "public_subnet_2" {
    vpc_id = aws_vpc.ecs.id
    cidr_block = var.public_subnet_2_cidr_block
    availability_zone       = var.az_2
    map_public_ip_on_launch = var.map_public_ip_on_launch

    tags = {
    Name = var.public_subnet_2_tags
  }

  
}

#Internet Gateway

resource "aws_internet_gateway" "ecs" {
    vpc_id = aws_vpc.ecs.id

    tags = {
    Name = var.igw_tags
  }
  
}

# First EIP

resource "aws_eip" "nat_eip_1" {
  domain = var.eip_domain_1

  tags = {
    Name = var.eip_tags_1
  }
}


# Second EIP

resource "aws_eip" "nat_eip_2" {
  domain = var.eip_domain_2

  tags = {
    Name = var.eip_tags_2
  }
}

# First Nat Gateway 

resource "aws_nat_gateway" "nat_1" {
  allocation_id = aws_eip.nat_eip_1.id
  subnet_id     = aws_subnet.public_subnet_1.id

  tags = {
    Name = var.nat_1_tags
  }

  
  depends_on = [aws_internet_gateway.ecs]
}

# Second Nat Gateway 

resource "aws_nat_gateway" "nat_2" {
  allocation_id = aws_eip.nat_eip_2.id
  subnet_id     = aws_subnet.public_subnet_2.id

  tags = {
    Name = var.nat_2_tags
  }

  
  depends_on = [aws_internet_gateway.ecs]

}

#Public Route Table 

resource "aws_route_table" "public" {
    vpc_id = aws_vpc.ecs.id
      
    route {
      cidr_block = var.public_route_table_cidr_block
      gateway_id = aws_internet_gateway.ecs.id
  }

   tags = {
      Name = var.public_route_table_tags
    }
}


#First Private Route table 

resource "aws_route_table" "private_1" {
    vpc_id = aws_vpc.ecs.id
      
    route {
      cidr_block = var.private_route_table_cidr_block_1
      nat_gateway_id = aws_nat_gateway.nat_1.id
  }

   tags = {
      Name = var.private_route_table_tags_1
    }
}

#Second Private Route table 

resource "aws_route_table" "private_2" {
    vpc_id = aws_vpc.ecs.id
      
    route {
      cidr_block = var.private_route_table_cidr_block_2
      nat_gateway_id = aws_nat_gateway.nat_2.id
  }

   tags = {
      Name = var.private_route_table_tags_2
    }
}


# First Public Route table association (Public Route Table --> First Public Subnet)

resource "aws_route_table_association" "public-1" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.public.id
}

# Second Public Route table association (Public Route Table --> Second Public Subnet)

resource "aws_route_table_association" "public-2" {
  subnet_id      = aws_subnet.public_subnet_2.id
  route_table_id = aws_route_table.public.id
}

# First Private Route table association (First Private Route Table --> First Private Subnet)

resource "aws_route_table_association" "private-1" {
  subnet_id      = aws_subnet.private_subnet_1.id
  route_table_id = aws_route_table.private_1.id
}

# Second Private Route table association (Second Private Route Table --> Second Private Subnet)

resource "aws_route_table_association" "private-2" {
  subnet_id      = aws_subnet.private_subnet_2.id
  route_table_id = aws_route_table.private_2.id
}

