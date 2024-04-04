resource "aws_vpc" "tf_test_vpc" {
  cidr_block = "192.168.0.0/16"

  tags = {
    Name = "tf_test_vpc"
  }
}
