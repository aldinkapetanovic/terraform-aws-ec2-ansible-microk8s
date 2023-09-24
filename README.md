export AWS_ACCESS_KEY_ID="anaccesskey"

export AWS_SECRET_ACCESS_KEY="asecretkey"

export AWS_DEFAULT_REGION="eu-west-2"


ssh-keygen -f microk8skey -N "" 

terraform init

terraform plan

terraform apply

ansible-galaxy install gantsign.oh-my-zsh

ansible-galaxy collection install community.general

Ansible PlayBooks

ansible-playbook -i microk8s-inventory.ini playbooks/upgrade.yml

ansible-playbook -i microk8s-inventory.ini playbooks/reboot.yml

ansible-playbook -i microk8s-inventory.ini playbooks/snap-microk8s.yml

ansible-playbook -i microk8s-inventory.ini playbooks/additional-packages.yml

ansible-playbook -i microk8s-inventory.ini playbooks/oh-my-zsh.yml

ansible-playbook -i microk8s-inventory.ini playbooks/ssh-key.yml

ansible-playbook -i microk8s-inventory.ini playbooks/enable-addons.yml

ansible-playbook -i microk8s-inventory.ini playbooks/join.yml
