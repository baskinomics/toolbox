#!/bin/bash

apt-get update
apt-get upgrade -y

apt-get install -y \
  flashplugin-installer \
  browser-plugin-freshplayer-pepperflash

# TODO Bashit

#-------------------------------------------------------------------------------
# Fonts
#-------------------------------------------------------------------------------
# See: https://wiki.ubuntu.com/Fonts

apt-get install fonts-firacode
sudo -u ${USERNAME} curl --location --output ~/.local/share/fonts/segoeui.ttf https://github.com/meloncholy/mt-stats-viewer/blob/master/public/fonts/segoe-ui/segoeui.ttf?raw=true
sudo -u ${USERNAME} fc-cache -f -v
