#!/bin/bash

FLANNEL_CIDR="10.224.0.0/16"
CRI_SOCKET="/var/run/crio/crio.sock"

# install dependencies
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl

# add gpg keys for repositories
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg

# add kubernetes repository
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list

# install tools
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl