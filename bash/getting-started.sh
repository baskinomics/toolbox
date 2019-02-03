#!/bin/bash

apt update
apt upgrade -y

apt install -y \
  flashplugin-installer \
  browser-plugin-freshplayer-pepperflash \
  fonts-firacode
