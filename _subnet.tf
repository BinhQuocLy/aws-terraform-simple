# Availability Zone 1
# {
# =========================================================================
# Public 1 Subnet
# =========================================================================
resource "aws_subnet" "tf_test_public_subnet_1" {
  vpc_id                  = aws_vpc.tf_test_vpc.id
  availability_zone       = "ap-southeast-1a"
  cidr_block              = "192.168.0.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "tf_test_public_subnet_1"
  }
}

# =========================================================================
# Private 1 Subnet
# =========================================================================
resource "aws_subnet" "tf_test_private_subnet_1" {
  vpc_id                  = aws_vpc.tf_test_vpc.id
  availability_zone       = "ap-southeast-1a"
  cidr_block              = "192.168.1.0/24"

  tags = {
    Name = "tf_test_private_subnet_1"
  }
}
# }

# # Availability Zone 2
# {
# =========================================================================
# Public 2 Subnet
# =========================================================================
resource "aws_subnet" "tf_test_public_subnet_2" {
  vpc_id                  = aws_vpc.tf_test_vpc.id
  availability_zone       = "ap-southeast-1b"
  cidr_block              = "192.168.2.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "tf_test_public_subnet_2"
  }
}

# =========================================================================
# Private 2 Subnet
# =========================================================================
resource "aws_subnet" "tf_test_private_subnet_2" {
  vpc_id                  = aws_vpc.tf_test_vpc.id
  availability_zone       = "ap-southeast-1b"
  cidr_block              = "192.168.3.0/24"

  tags = {
    Name = "tf_test_private_subnet_2"
  }
}
# }
