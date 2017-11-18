#!/bin/bash

set -e

echo "Instaling Kubernetes binaries"

cd ~/
curl -s -L https://github.com/kubernetes/kubernetes/releases/download/v1.8.3/kubernetes.tar.gz -o kubernetes.tar.gz
tar xf kubernetes
source ./kubernetes/cluster/get-kube-binaries.sh
#sudo cp ./kubernetes/client/bin/* /usr/bin/
tar -xf ./kubernetes/server/kubernetes-server-linux-amd64.tar.gz
sudo cp ./kubernetes/server/bin/* /usr/bin
