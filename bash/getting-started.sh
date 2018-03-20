#!/bin/bash

# Update
apt update

# Install Ansible
apt install --yes software-properties-common
apt-add-repository --yes --update ppa:ansible/ansible
apt install --yes ansible
