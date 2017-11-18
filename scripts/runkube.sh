#!/bin/bash

set -e

echo "Instaling Kubernetes binaries"

docker pull gcr.io/google-containers/etcd:2.2.1
ETCD_IMAGE=gcr.io/google-containers/etcd:2.2.1

docker pull gcr.io/google_containers/hyperkube-amd64:v1.8.3
HYPERKUBE_IMAGE=gcr.io/google-containers/hyperkube-amd64:v1.8.3
