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