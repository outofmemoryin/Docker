#!/bin/bash

echo "[TASK 1] Install Yum Utils"
yum install -y yum-utils
echo "[TASK 2] Install Docker"
yum-config-manager  --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce
systemctl enable docker
systemctl start docker
sudo usermod -aG docker vagrant
