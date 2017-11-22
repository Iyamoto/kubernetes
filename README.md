# Kubernetes cluster in Vagrant

## Install

    git clone https://github.com/Iyamoto/kubernetes.git
    cd kubernetes/bin
    bash getbinaries.sh # Downloads binaries
    cd ..
    vagrant up
    vagrant reload

## Use

    vagrant ssh

    kubectl get componentstatus
    kubectl get nodes
    kubectl describe node kube
    kubectl cluster-info dump

    kubectl apply -f /vagrant/manifests/pyweb-pod.yaml
    kubectl get pod
    kubectl describe pod pyweb
    kubectl logs pyweb