

AWS specific


export AWS_ACCESS_KEY_ID="anaccesskey"

export AWS_SECRET_ACCESS_KEY="asecretkey"

export AWS_DEFAULT_REGION="eu-west-2"



Generate SSH key


ssh-keygen -f microk8skey -N "" 



Run Terraform commands


terraform init

terraform plan

terraform apply



Prepare Ansible


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


Additional work for remote access

master[0]

vim /var/snap/microk8s/current/certs/csr.conf.template

DNS/IP

sudo snap set microk8s csr-refresh=true

microk8s config > .kube/config

chmod 700 ~/.kube/config

scp ubuntu@ec2-18-170-120-124.eu-west-2.compute.amazonaws.com:/home/ubuntu/.kube/config ~/.kube/config

vim ~/.kube/config


Dashboard


kubectl port-forward -n kube-system service/kubernetes-dashboard 10443:443

https://localhost:10443/



Bonus


helm repo add rancher-latest https://releases.rancher.com/server-charts/latest


helm install rancher rancher-latest/rancher \
--namespace cattle-system \
--set hostname=ec2-18-170-120-124.eu-west-2.compute.amazonaws.com \
--set bootstrapPassword=admin \
--create-namespace
