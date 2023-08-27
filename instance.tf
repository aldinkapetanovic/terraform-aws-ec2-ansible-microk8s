resource "aws_instance" "microk8s-node" {
  count = var.n

  ami           = "ami-0eb260c4d5475b901"
  instance_type = "t2.medium"

  # the VPC subnet
  # subnet_id = aws_subnet.main-public-1.id

  # the security group
  # vpc_security_group_ids = [aws_security_group.allow-min-traffic.id]

  # the public SSH key
  key_name = aws_key_pair.microk8skey.key_name

  tags = {
    Name = "microk8s-node-${count.index + 1}"
  }
}
