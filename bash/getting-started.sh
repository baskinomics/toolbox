#!/bin/bash

# Update
sudo apt-get update

# Install Ansible
sudo apt-get install --yes software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get install --yes ansible
