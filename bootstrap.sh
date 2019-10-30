#!/usr/bin/env bash
sudo apt-get -y -q update


sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl curl software-properties-common

curl -L https://github.com/kubernetes/kompose/releases/download/v1.19.0/kompose-linux-amd64 -o kompose

sudo chmod +x kompose
sudo mv ./kompose /usr/local/bin/kompose

# cd /vagrant

# kompose up

