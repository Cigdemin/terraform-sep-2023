resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "${var.env}-vpc" ,
    Environment = var.env
  }
}
resource "aws_subnet" "pubsub1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.pubsub1_cidr

  tags = {
    Name = "${var.env}-${var.pubsub_name}-1" ,
    Environment = var.env
  }
}
resource "aws_subnet" "pubsub2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.pubsub2_cidr

  tags = {
    Name = "${var.env}-${var.pubsub_name}-2" ,
    Environment = var.env
  }
}
resource "aws_subnet" "pubsub3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.pubsub3_cidr

  tags = {
    Name = "${var.env}-${var.pubsub_name}-3" ,
    Environment = var.env
  }
}
resource "aws_subnet" "prisub1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.prisub1_cidr

  tags = {
    Name = "${var.env}-${var.prisub_name}-1" ,
    Environment = var.env
  }
}
resource "aws_subnet" "prisub2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.prisub2_cidr

  tags = {
    Name = "${var.env}-${var.prisub_name}-2" ,
    Environment = var.env
  }
}
resource "aws_subnet" "prisub3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.prisub3_cidr

  tags = {
    Name = "${var.env}-${var.prisub_name}-3" ,
    Environment = var.env
  }
}
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.env}-${var.igw_name}" ,
    Environment = var.env
  }
}
resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "${var.env}-public-rt" ,
    Environment = var.env
  }
}
resource "aws_route_table_association" "pubsub1" {
  subnet_id      = aws_subnet.pubsub1.id
  route_table_id = aws_route_table.public-rt.id
}
resource "aws_route_table_association" "pubsub2" {
  subnet_id      = aws_subnet.pubsub2.id
  route_table_id = aws_route_table.public-rt.id
}
resource "aws_route_table_association" "pubsub3" {
  subnet_id      = aws_subnet.pubsub3.id
  route_table_id = aws_route_table.public-rt.id
}
resource "aws_eip" "elasticip" {
}

resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.elasticip.id
  connectivity_type = "public"
  subnet_id         = aws_subnet.pubsub1.id
  depends_on = [aws_internet_gateway.igw]
    tags = {
        Name = "${var.env}-NGW"
        Environment = var.env    
  }
}
resource "aws_route_table" "private-rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natgw.id
  }

  tags = {
    Name = "${var.env}-private-rt" ,
    Environment = var.env
  }
}
resource "aws_route_table_association" "prisub1" {
  subnet_id      = aws_subnet.prisub1.id
  route_table_id = aws_route_table.private-rt.id
}
resource "aws_route_table_association" "prisub2" {
  subnet_id      = aws_subnet.prisub2.id
  route_table_id = aws_route_table.private-rt.id
}
resource "aws_route_table_association" "prisub3" {
  subnet_id      = aws_subnet.prisub3.id
  route_table_id = aws_route_table.private-rt.id
}