resource "aws_ec2_instance_connect_endpoint" "tf_test_eice" {
  subnet_id = aws_subnet.tf_test_private_subnet_1.id
  security_group_ids = [ aws_security_group.tf_test_public_sg.id ]
  
  tags = {
    Name = "tf_test_eice"
  }
}
