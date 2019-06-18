# Installs Nerd Fonts
function install_nerd_fonts ()
{
    # https://github.com/ryanoasis/nerd-fonts/releases/tag/v2.0.0

    # todo are these fonts included in nerd fonts?
    # sudo -u ${USERNAME} curl --location --output ~/.local/share/fonts/segoeui.ttf https://github.com/meloncholy/mt-stats-viewer/blob/master/public/fonts/segoe-ui/segoeui.ttf?raw=true
    # sudo -u ${USERNAME} curl --location --output ~/.local/share/fonts/HelveticaNeue.ttf https://raw.githubusercontent.com/adachis/Lifehacker.me/master/fonts/HelveticaNeue.ttf
    # sudo -u ${USERNAME} curl --location --output ~/.local/share/fonts/helvetica.ttf https://raw.githubusercontent.com/CartoDB/cartodb/master/app/assets/fonts/helvetica.ttf
    # sudo -u ${USERNAME} curl --location --output ~/.local/share/fonts/Lucida%20Grande.ttf https://raw.githubusercontent.com/guardianproject/securereader/master/app/src/main/assets/fonts/Lucida%20Grande.ttf

    # Build fonts
    fc-cache -f -v
}

# Installs miscellaneous fonts
function install_misc_fonts ()
{
    apt-get install -y fonts-open-sans
    
    # Build fonts
    fc-cache -f -v
}
