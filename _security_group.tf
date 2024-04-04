# =========================================================================
# Public Security Group
# =========================================================================
resource "aws_security_group" "tf_test_public_sg" {
  name   = "tf_test_public_sg"
  vpc_id = aws_vpc.tf_test_vpc.id

  tags = {
    Name = "tf_test_public_sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "tf_allow_inbound_ssh_public" {
  description       = "SSH"
  security_group_id = aws_security_group.tf_test_public_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22

  tags = {
    Name = "tf_allow_inbound_ssh"
  }
}

resource "aws_vpc_security_group_ingress_rule" "tf_allow_inbound_https" {
  description       = "HTTPS"
  security_group_id = aws_security_group.tf_test_public_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443

  tags = {
    Name = "tf_allow_inbound_https"
  }
}

resource "aws_vpc_security_group_egress_rule" "tf_allow_outbound_all" {
  security_group_id = aws_security_group.tf_test_public_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"

  tags = {
    Name = "tf_allow_outbound_all"
  }
}

# =========================================================================
# Private Security Group
# =========================================================================
resource "aws_security_group" "tf_test_private_sg" {
  name   = "tf_test_private_sg"
  vpc_id = aws_vpc.tf_test_vpc.id

  tags = {
    Name = "tf_test_private_sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "tf_allow_inbound_ssh_private" {
  description       = "SSH"
  security_group_id = aws_security_group.tf_test_private_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22

  tags = {
    Name = "tf_allow_inbound_ssh_private"
  }
}
