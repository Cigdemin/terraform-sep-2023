resource "aws_security_group" "hw-sg" {
  name        = "web"
  description = "Allow  ports and protocols for web instance"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "web"
  }
}

resource "aws_vpc_security_group_ingress_rule" "main" {
  security_group_id = aws_security_group.hw-sg.id
  cidr_ipv4 = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_egress_rule" "main" {
  security_group_id = aws_security_group.hw-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}
