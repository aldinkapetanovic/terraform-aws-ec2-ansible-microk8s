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
