resource "aws_instance" "main" {
  count = 1
  ami = data.aws_ami.amazon_linux_2.image_id
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.main.id ]
  user_data = data.template_file.userdata.rendered
  tags = {
    Name = "${var.env}-Instance" ,
    Environment = var.env
  }
  lifecycle {
    create_before_destroy = true
  }
}