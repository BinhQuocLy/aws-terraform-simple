resource "aws_internet_gateway" "tf_test_igw" {
  vpc_id = aws_vpc.tf_test_vpc.id

  tags = {
    Name = "tf_test_igw"
  }
}
