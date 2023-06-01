resource "aws_key_pair" "microk8skey" {
  key_name   = "microk8skey"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}

