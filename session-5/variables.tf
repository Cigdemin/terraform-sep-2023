variable "team" {
    type = string
    default = "devops"
}
variable "env" {
    type = string
    description = "this variable is for the environment"
    default = "dev"
}
variable "team" {
    type = string
    default = "dev"
}
variable "env" {
    type = string
    description = "this variable is for the environment"
    default = "dev"
}
variable "app" {
    type = string
    default = "dev"
}
variable "project" {
    type = string
    default = "dev"
}
variable "managed_by" {
    type = string
    default = "dev"
}
variable "owner" {
    type = string
    default = "dev"
}

variable "ports" {
    type = list(number)
    description = "these are ports number for instance to open "
    default = [443,80,22,3306,53,21]
}
variable "cidr_blocks" {
    type = list(string)
    description = "these are ports number for instance to open "
    default = ["0.0.0.0/0","0.0.0.0/0","10.0.0.0/16","10.0.0.0/16","0.0.0.0/0","10.0.0.0/16"]
}

