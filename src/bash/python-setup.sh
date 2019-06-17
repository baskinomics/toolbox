#!/bin/bash

# Python
#   Description: install pip and Python Language Server
apt install -y python3-pip
sudo -u ${USERNAME} pip3 install 'python-language-server[all]'

# Atom
#   Description: install the Atom IDE UI and Python packages
sudo -u ${USERNAME} apm install atom-ide-ui
sudo -u ${USERNAME} apm install ide-python
