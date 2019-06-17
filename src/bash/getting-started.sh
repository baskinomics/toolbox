#!/bin/bash

apt-get update
apt-get upgrade -y

# Package installation
apt-get install -y \
  vim \
  flashplugin-installer \
  browser-plugin-freshplayer-pepperflash \
  asciidoc \
  gnome-shell-extension-top-icons-plus \
  gnome-shell-extension-caffeine \
  gnome-shell-pomodoro \
  gnome-shell-extension-weather

# Developement workspace scaffolding
sudo -u ${USERNAME} mkdir home/${USERNAME}/development
sudo -u ${USERNAME} mkdir home/${USERNAME}/development/git
sudo -u ${USERNAME} mkdir home/${USERNAME}/development/ide
sudo -u ${USERNAME} mkdir -p home/${USERNAME}/development/playground \
  home/${USERNAME}/development/playground/graddle \
  home/${USERNAME}/development/playground/julia \
  home/${USERNAME}/development/playground/python \
  home/${USERNAME}/development/playground/rust
sudo -u ${USERNAME} mkdir -p home/${USERNAME}/development/languages \
  home/${USERNAME}/development/languages/java \
  home/${USERNAME}/development/languages/go \
  home/${USERNAME}/development/languages/rust \
  home/${USERNAME}/development/languages/python
