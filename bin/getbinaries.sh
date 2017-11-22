#!/usr/bin/env bash

# Download Kubernetes binaries
kubeletversion='v1.8.4' # https://storage.googleapis.com/kubernetes-release/release/stable.txt

curl -Lo kubelet https://storage.googleapis.com/kubernetes-release/release/${kubeletversion}/bin/linux/amd64/kubelet

curl -Lo kube-proxy https://storage.googleapis.com/kubernetes-release/release/${kubeletversion}/bin/linux/amd64/kube-proxy

curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/${kubeletversion}/bin/linux/amd64/kubectl
# echo "source <(kubectl completion bash)" >> ~/.bashrc