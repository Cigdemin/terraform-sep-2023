# resource "aws_instance" "hw-instance" {
#   ami = var.ami
#   instance_type = var.instance_type
#   vpc_security_group_ids = [ aws_security_group.hw-sg.id ]
#   tags = {
#     Name = "${var.env}-Instance" 
#     Environment = var.env
#   }
# }