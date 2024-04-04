resource "tls_private_key" "tf_test_private_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "tf_test_key_pair" {
  key_name   = "tf_test_key_pair"
  public_key = tls_private_key.tf_test_private_key.public_key_openssh
}
