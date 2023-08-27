output "microk8s-node" {
  value = aws_instance.microk8s-node[*].public_dns
}
