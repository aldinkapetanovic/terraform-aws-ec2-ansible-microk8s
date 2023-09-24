output "microk8s-node-private_ip" {
  value = aws_instance.microk8s-node[*].private_ip
}

output "microk8s-node-public_ip" {
  value = aws_instance.microk8s-node[*].public_ip
}

output "microk8s-node-public_dns" {
  value = aws_instance.microk8s-node[*].public_dns
}
