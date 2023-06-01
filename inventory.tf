resource "local_file" "inventory" {
  filename = "./microk8s-inventory.ini"
  content  = <<-EOF
    [master]
    ${aws_instance.microk8s-node-1.public_dns} ansible_ssh_user='ubuntu' ansible_ssh_common_args='-o StrictHostKeyChecking=no' ansible_ssh_private_key_file='./microk8skey'
    [control_plane_2]
    ${aws_instance.microk8s-node-2.public_dns} ansible_ssh_user='ubuntu' ansible_ssh_common_args='-o StrictHostKeyChecking=no' ansible_ssh_private_key_file='./microk8skey'
    [control_plane_3]
    ${aws_instance.microk8s-node-3.public_dns} ansible_ssh_user='ubuntu' ansible_ssh_common_args='-o StrictHostKeyChecking=no' ansible_ssh_private_key_file='./microk8skey'
    [control_plane_4]
    ${aws_instance.microk8s-node-4.public_dns} ansible_ssh_user='ubuntu' ansible_ssh_common_args='-o StrictHostKeyChecking=no' ansible_ssh_private_key_file='./microk8skey'
    [worker]
    ${aws_instance.microk8s-node-5.public_dns} ansible_ssh_user='ubuntu' ansible_ssh_common_args='-o StrictHostKeyChecking=no' ansible_ssh_private_key_file='./microk8skey'
    [workers:children]
    control_plane_2
    control_plane_3
    control_plane_4
    worker
    EOF
}
