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


# variable "" {
#     type = 
#     description = "value"
#     default = 
# }
# variable "" {
#     type = 
#     description = "value"
#     default = 
# }
# variable "" {
#     type = 
#     description = "value"
#     default = 
# }

