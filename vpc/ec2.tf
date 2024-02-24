resource "aws_instance" "hw-instance" {
  ami = var.ami
  associate_public_ip_address = true
  instance_type = var.instance_type
  key_name = "cigdem@hp"
  vpc_security_group_ids = [ aws_security_group.hw-sg.id ]
  subnet_id = aws_subnet.pubsub1.id
  user_data = file ("${path.module}/script.sh")          
  tags = {
    Name = "${var.env}-Instance" 
    Environment = var.env
  }
}

#Referance for userdata information: https://learning-ocean.com/tutorials/terraform/terraform-user-data