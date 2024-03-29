variable "env" {
    type = string
    description = "this variable is for the environment"
    default = "dev"
}

variable "vpc_cidr" {
    type = string
    description = "This variable is CIDR block for VPC"
    default = "10.0.0.0/16"
}
variable "pubsub_name" {
    type = string
    description = "This is CIDR range for public subnet 1"
    default = "public-subnet"
}
variable "pubsub1_cidr" {
    type = string
    description = "This is CIDR range for public subnet 1"
    default = "10.0.1.0/24"
}
variable "pubsub2_cidr" {
    type = string
    description = "This is CIDR range for public subnet 2"
    default = "10.0.2.0/24"
}
variable "pubsub3_cidr" {
    type = string
    description = "This is CIDR range for public subnet 3"
    default = "10.0.3.0/24"
}
variable "prisub_name" {
    type = string
    description = "This is CIDR range for public subnet 1"
    default = "private-subnet"
}
variable "prisub1_cidr" {
    type = string
    description = "This is CIDR range for private subnet 1"
    default = "10.0.10.0/24"
}
variable "prisub2_cidr" {
    type = string
    description = "This is CIDR range for private subnet 2"
    default = "10.0.20.0/24"
}
variable "prisub3_cidr" {
    type = string
    description = "This is CIDR range for private subnet 3"
    default = "10.0.30.0/24"
}

variable "igw_name" {
    type = string
    description = "IGW name"
    default = "IGW"
}
variable "ami" {
    type = string
    description = "This AMi ID for instance"
    default = "ami-0440d3b780d96b29d"
}

variable "instance_type" {
    type = string
    description = "This is Instance size"
    default = "t2.micro"
}
