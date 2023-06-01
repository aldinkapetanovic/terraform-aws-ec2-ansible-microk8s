output "microk8s-node-1-ip" {
  value = aws_instance.microk8s-node-1.public_dns
}

output "microk8s-node-2-ip" {
  value = aws_instance.microk8s-node-2.public_dns
}

output "microk8s-node-3-ip" {
  value = aws_instance.microk8s-node-3.public_dns
}

output "microk8s-node-4-ip" {
  value = aws_instance.microk8s-node-4.public_dns
}

output "microk8s-node-5-ip" {
  value = aws_instance.microk8s-node-5.public_dns
}
