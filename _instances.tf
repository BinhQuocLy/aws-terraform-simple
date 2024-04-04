# =========================================================================
# Public 1 Instance
# =========================================================================
resource "aws_instance" "tf_test_public_instance_1" {
  ami                    = "ami-097c4e1feeea169e5"
  instance_type          = "t2.nano"
  iam_instance_profile   = aws_iam_instance_profile.tf_test_profile.name
  subnet_id              = aws_subnet.tf_test_public_subnet_1.id
  key_name               = aws_key_pair.tf_test_key_pair.key_name
  vpc_security_group_ids = [aws_security_group.tf_test_public_sg.id]

  tags = {
    Name = "tf_test_public_instance_1"
  }
}

# =========================================================================
# Private 1 Instance
# =========================================================================
resource "aws_instance" "tf_test_private_instance_1" {
  ami                    = "ami-097c4e1feeea169e5"
  instance_type          = "t2.nano"
  subnet_id              = aws_subnet.tf_test_private_subnet_1.id
  vpc_security_group_ids = [aws_security_group.tf_test_private_sg.id]

  tags = {
    Name = "tf_test_private_instance_1"
  }
}

# =========================================================================
# Public 2 Instance
# =========================================================================
resource "aws_instance" "tf_test_public_instance_2" {
  ami                    = "ami-097c4e1feeea169e5"
  instance_type          = "t2.nano"
  iam_instance_profile   = aws_iam_instance_profile.tf_test_profile.name
  subnet_id              = aws_subnet.tf_test_public_subnet_2.id
  key_name               = aws_key_pair.tf_test_key_pair.key_name
  vpc_security_group_ids = [aws_security_group.tf_test_public_sg.id]

  tags = {
    Name = "tf_test_public_instance_2"
  }
}

# =========================================================================
# Private 2 Instance
# =========================================================================
resource "aws_instance" "tf_test_private_instance_2" {
  ami                    = "ami-097c4e1feeea169e5"
  instance_type          = "t2.nano"
  subnet_id              = aws_subnet.tf_test_private_subnet_2.id
  vpc_security_group_ids = [aws_security_group.tf_test_private_sg.id]

  tags = {
    Name = "tf_test_private_instance_2"
  }
}
