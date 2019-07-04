#!/bin/bash

# Installs Nerd Fonts
# todo implement
function install_nerd_fonts ()
{
    # https://github.com/ryanoasis/nerd-fonts/releases/tag/v2.0.0

    # todo are these fonts included in nerd fonts?
    # sudo -u ${USERNAME} curl --location --output ~/.local/share/fonts/segoeui.ttf https://github.com/meloncholy/mt-stats-viewer/blob/master/public/fonts/segoe-ui/segoeui.ttf?raw=true
    # sudo -u ${USERNAME} curl --location --output ~/.local/share/fonts/HelveticaNeue.ttf https://raw.githubusercontent.com/adachis/Lifehacker.me/master/fonts/HelveticaNeue.ttf
    # sudo -u ${USERNAME} curl --location --output ~/.local/share/fonts/helvetica.ttf https://raw.githubusercontent.com/CartoDB/cartodb/master/app/assets/fonts/helvetica.ttf
    # sudo -u ${USERNAME} curl --location --output ~/.local/share/fonts/Lucida%20Grande.ttf https://raw.githubusercontent.com/guardianproject/securereader/master/app/src/main/assets/fonts/Lucida%20Grande.ttf

    # Build font information caches
    fc-cache --force --verbose
}

# Installs fonts available via the apt package manager
function install_font_apt_available ()
{
    # Open Sans
    apt-get install --yes fonts-open-sans

    # Microsoft Core Fonts
    apt-get install --yes ttf-mscorefonts-installer

    # Build font information caches
    # todo is this needed or does apt execute this during the installation process?
    fc-cache --force --verbose
}

# Installs the Source Sans Pro font family
function install_font_source_sans_pro ()
{
    # Define the release URL
    release="https://github.com/adobe-fonts/source-sans-pro/releases/download/2.045R-ro%2F1.095R-it/source-sans-pro-2.045R-ro-1.095R-it.zip"
    
    # cURL the release artifact from GitHub
    curl --remote-name --location $release

    # Unzip the archive to a temporary directory
    unzip source-sans-pro-2.045R-ro-1.095R-it.zip -d temp-source-sans-pro

    # Extract the TTF font files
    cp temp-source-sans-pro/source-sans-pro-2.045R-ro-1.095R-it/OTF/* /home/zoo/.local/share/fonts

    # Build font information caches
    fc-cache --force --verbose

    # Cleanup
    rm source-sans-pro-2.045R-ro-1.095R-it.zip
    rm -rf temp-source-sans-pro
}
