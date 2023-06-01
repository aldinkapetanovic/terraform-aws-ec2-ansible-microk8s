resource "aws_instance" "microk8s-node-1" {
  ami           = "ami-01dd271720c1ba44f"
  instance_type = "t2.medium"

  # the VPC subnet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.allow-min-traffic.id]

  # the public SSH key
  key_name = aws_key_pair.microk8skey.key_name

  # root disk
  root_block_device {
    volume_size = "20"
  }

  tags = {
    Name = "microk8s-node-1"
  }
}

resource "aws_instance" "microk8s-node-2" {
  ami           = "ami-01dd271720c1ba44f"
  instance_type = "t2.medium"

  # the VPC subnet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.allow-min-traffic.id]

  # the public SSH key
  key_name = aws_key_pair.microk8skey.key_name

  # root disk
  root_block_device {
    volume_size = "20"
  }

  tags = {
    Name = "microk8s-node-2"
  }
}

resource "aws_instance" "microk8s-node-3" {
  ami           = "ami-01dd271720c1ba44f"
  instance_type = "t2.medium"

  # the VPC subnet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.allow-min-traffic.id]

  # the public SSH key
  key_name = aws_key_pair.microk8skey.key_name

  # root disk
  root_block_device {
    volume_size = "20"
  }

  tags = {
    Name = "microk8s-node-3"
  }
}

resource "aws_instance" "microk8s-node-4" {
  ami           = "ami-01dd271720c1ba44f"
  instance_type = "t2.medium"

  # the VPC subnet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.allow-min-traffic.id]

  # the public SSH key
  key_name = aws_key_pair.microk8skey.key_name

  # root disk
  root_block_device {
    volume_size = "20"
  }

  tags = {
    Name = "microk8s-node-4"
  }
}

resource "aws_instance" "microk8s-node-5" {
  ami           = "ami-01dd271720c1ba44f"
  instance_type = "t2.medium"

  # the VPC subnet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.allow-min-traffic.id]

  # the public SSH key
  key_name = aws_key_pair.microk8skey.key_name

  # root disk
  root_block_device {
    volume_size = "20"
  }

  tags = {
    Name = "microk8s-node-5"
  }
}
