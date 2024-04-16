variable "team" {
    type = string
    default = "devops"
}
variable "env" {
    type = string
    description = "this variable is for the environment"
    default = "dev"
}
variable "app" {
    type = string
    default = "jenkins"
}
variable "project" {
    type = string
    default = "dev"
}
variable "managed_by" {
    type = string
    default = "terraform"
}
variable "owner" {
    type = string
    default = "cigdem"
}

variable "ports" {
    type = list(number)
    description = "these are ports number for instance to open "
    default = [443,80,22,8080]
}
variable "cidr_blocks" {
    type = list(string)
    description = "these are ports number for instance to open "
    default = ["0.0.0.0/0","0.0.0.0/0","0.0.0.0/0","0.0.0.0/0"]
}

