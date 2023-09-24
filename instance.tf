resource "aws_instance" "microk8s-node" {
  count = var.n

  ami           = "ami-0eb260c4d5475b901"
  instance_type = "t2.medium"

  ### the public SSH key
  key_name = aws_key_pair.microk8skey.key_name

  ### root disk
  # root_block_device {
  #   volume_size = "20"
  # }

  tags = {
    Name = "microk8s-node-${count.index + 1}"
  }
}
