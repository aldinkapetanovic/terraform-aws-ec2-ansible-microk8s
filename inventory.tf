resource "local_file" "inventory" {
  filename = "./microk8s-inventory.ini"
  content  = <<-EOF
    [master]
    ${join("\n", [for i in range(var.masters) : "${aws_instance.microk8s-node[i].public_dns} ansible_ssh_user='ubuntu' ansible_ssh_common_args='-o StrictHostKeyChecking=no' ansible_ssh_private_key_file='./microk8skey'"])}

    [worker]
    ${join("\n", [for i in range(var.masters + 1, var.n) : "${aws_instance.microk8s-node[i].public_dns} ansible_ssh_user='ubuntu' ansible_ssh_common_args='-o StrictHostKeyChecking=no' ansible_ssh_private_key_file='./microk8skey'"])}
    
  EOF
}

# resource "local_file" "inventory" {
#   filename = "./microk8s-inventory.ini"
#   content  = <<-EOF
#     [master]
# ${join("\n", aws_instance.microk8s-node[:4].*public_dns)} ansible_ssh_user='ubuntu' ansible_ssh_common_args='-o StrictHostKeyChecking=no' ansible_ssh_private_key_file='./microk8skey'

#     [worker]
# ${join("\n", aws_instance.microk8s-node[4:].*public_dns)} ansible_ssh_user='ubuntu' ansible_ssh_common_args='-o StrictHostKeyChecking=no' ansible_ssh_private_key_file='./microk8skey'

# EOF
# }
