resource "aws_instance" "main" {
  ami = "ami-0440d3b780d96b29d"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.main.id ]
  tags = {
    Name = "Instance" ,
    Environment = var.env
  }
}