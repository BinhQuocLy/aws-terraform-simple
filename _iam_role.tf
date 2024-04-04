resource "aws_iam_instance_profile" "tf_test_profile" {
  name = "tf_test_profile"
  role = aws_iam_role.tf_test_role.name
}

resource "aws_iam_role" "tf_test_role" {
  name = "tf_test_role"
  path = "/"

  assume_role_policy = <<EOF
  {
      "Version": "2012-10-17",
      "Statement": [
          {
              "Action": "sts:AssumeRole",
              "Principal": {
                "Service": "ec2.amazonaws.com"
              },
              "Effect": "Allow",
              "Sid": ""
          }
      ]
  }
  EOF
}

resource "aws_iam_role_policy_attachment" "tf_test_attachment" {
  role       = aws_iam_role.tf_test_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}
