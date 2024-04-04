output "private_ips" {
  value = <<EOF
    Public instance 1  private IPv4: ${aws_instance.tf_test_public_instance_1.private_ip}
    Private instance 1 private IPv4: ${aws_instance.tf_test_private_instance_1.private_ip}
    Public instance 2  private IPv4: ${aws_instance.tf_test_public_instance_2.private_ip}
    Private instance 2 private IPv4: ${aws_instance.tf_test_private_instance_2.private_ip}
  EOF
}

output "public_ips" {
  value = <<EOF
    Public instance 1  public IPv4: ${aws_instance.tf_test_public_instance_1.public_ip}
    Private instance 1 public IPv4: ${aws_instance.tf_test_private_instance_1.public_ip}
    Public instance 2  public IPv4: ${aws_instance.tf_test_public_instance_2.public_ip}
    Private instance 2 public IPv4: ${aws_instance.tf_test_private_instance_2.public_ip}
  EOF
}

output "private_key" {
  value     = tls_private_key.tf_test_private_key.private_key_pem
  sensitive = true
}
