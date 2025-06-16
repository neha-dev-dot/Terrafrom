// VPC
resource "aws_vpc" "my-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "my-vpc"
  }
}

// Private subnet
resource "aws_subnet" "private-subnet" {
  cidr_block = "10.0.1.0/24"
  vpc_id = aws_vpc.my-vpc.id
  tags = {
    Name = "private-subnet"
  }
}

// Public subnet
resource "aws_subnet" "public-subnet" {
  cidr_block = "10.0.2.0/24"
  vpc_id = aws_vpc.my-vpc.id
  tags = {
    Name = "public-subnet"
  }
}

// Internet Gateway
resource "aws_internet_gateway" "my-igw" {
  vpc_id = aws_vpc.my-vpc.id
  tags = {
    Name = "my-igw"
  }
}

// Route Table
resource "aws_route_table" "my-route" {
  vpc_id = aws_vpc.my-vpc.id
  tags = {
    Name = "my-route-table"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-igw.id
  }
}

// Route Table Association
resource "aws_route_table_association" "public-sub" {
  route_table_id = aws_route_table.my-route.id
  subnet_id      = aws_subnet.public-subnet.id
}
