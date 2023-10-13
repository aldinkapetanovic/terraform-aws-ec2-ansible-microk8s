# Ansible PlayBooks

ansible-playbook -i inventory.ini -k -K playbooks/nopasswd.yml

ansible-playbook -i inventory.ini playbooks/snap-microk8s.yml

ansible-playbook -i inventory.ini playbooks/addons.yml

ansible-playbook -i inventory.ini playbooks/join.yml

ansible-playbook -i inventory.ini playbooks/upgrade.yml

ansible-playbook -i inventory.ini playbooks/reboot.yml

ansible-playbook -i inventory.ini playbooks/packages.yml

ansible-playbook -i inventory.ini playbooks/oh-my-zsh.yml

ansible-playbook -i inventory.ini playbooks/ssh-key.yml

ansible-playbook -i inventory.ini playbooks/timezone.yml

# MicroK8s

## Remote access

ssh mycluster-m-01.domain.tld

microk8s config > .kube/config

scp mycluster-m-01.domain.tld:/home/ubuntu/.kube/config ~/.kube/config-mycluster

 kubectl --kubeconfig ~/.kube/config-mycluster get no

 k9s --kubeconfig ~/.kube/config-mycluster
 

## Dashboard

kubectl --kubeconfig ~/.kube/config-mycluster port-forward -n kube-system service/kubernetes-dashboard 10443:443

https://localhost:10443/
