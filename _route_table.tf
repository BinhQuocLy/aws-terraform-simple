resource "aws_route_table" "tf_test_public_rt" {
  vpc_id = aws_vpc.tf_test_vpc.id

  route {
    cidr_block = "192.168.0.0/16"
    gateway_id = "local"
  }

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tf_test_igw.id
  }

  tags = {
    Name = "tf_test_public_rt"
  }
}

resource "aws_route_table" "tf_test_private_rt" {
  vpc_id = aws_vpc.tf_test_vpc.id

  route {
    cidr_block = "192.168.0.0/16"
    gateway_id = "local"
  }

  tags = {
    Name = "tf_test_private_rt"
  }
}

resource "aws_route_table_association" "tf_test_public_rt_assoc1" {
  count = 2
  subnet_id = element([
    aws_subnet.tf_test_public_subnet_1.id,
    aws_subnet.tf_test_public_subnet_2.id,
  ], count.index)
  route_table_id = aws_route_table.tf_test_public_rt.id
}

resource "aws_route_table_association" "tf_test_private_rt_assoc1" {
  count = 2
  subnet_id = element([
    aws_subnet.tf_test_private_subnet_1.id,
    aws_subnet.tf_test_private_subnet_2.id
  ], count.index)
  route_table_id = aws_route_table.tf_test_private_rt.id
}
