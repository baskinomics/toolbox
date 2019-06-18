#!/bin/bash

# Update apt cache and upgrade packages
function update_and_upgrade ()
{
    apt-get update
    apt-get upgrade -y
}

# Install initial packages
function install_packages ()
{
    apt-get install -y vim
    apt-get install -y flashplugin-installer
    apt-get install -y browser-plugin-freshplayer-pepperflash
    apt-get install -y asciidoc
    apt-get install -y gnome-shell-extension-top-icons-plus
    apt-get install -y gnome-shell-extension-caffeine
    apt-get install -y gnome-shell-pomodoro
    apt-get install -y gnome-shell-extension-weather
}