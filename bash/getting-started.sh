#!/bin/bash

apt-get update
apt-get upgrade -y

# Package installation
apt-get install -y \
  flashplugin-installer \
  browser-plugin-freshplayer-pepperflash \
  asciidoc \
  gnome-shell-extension-top-icons-plus \
  gnome-shell-extension-caffeine \
  gnome-shell-pomodoro \
  gnome-shell-extension-weather

# TODO Bashit
# TODO Define gs alias

# Fonts - See: https://wiki.ubuntu.com/Fonts
apt-get install fonts-firacode
sudo -u ${USERNAME} curl --location --output ~/.local/share/fonts/segoeui.ttf https://github.com/meloncholy/mt-stats-viewer/blob/master/public/fonts/segoe-ui/segoeui.ttf?raw=true
sudo -u ${USERNAME} fc-cache -f -v
