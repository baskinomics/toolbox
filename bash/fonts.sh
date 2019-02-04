apt-get update
apt-get install -y fonts-firacode
sudo -u ${USERNAME} curl --location --output ~/.local/share/fonts/segoeui.ttf https://github.com/meloncholy/mt-stats-viewer/blob/master/public/fonts/segoe-ui/segoeui.ttf?raw=true
sudo -u ${USERNAME} curl --location --output ~/.local/share/fonts/HelveticaNeue.ttf https://raw.githubusercontent.com/adachis/Lifehacker.me/master/fonts/HelveticaNeue.ttf
sudo -u ${USERNAME} curl --location --output ~/.local/share/fonts/helvetica.ttf https://raw.githubusercontent.com/CartoDB/cartodb/master/app/assets/fonts/helvetica.ttf
sudo -u ${USERNAME} curl --location --output ~/.local/share/fonts/Lucida%20Grande.ttf https://raw.githubusercontent.com/guardianproject/securereader/master/app/src/main/assets/fonts/Lucida%20Grande.ttf
sudo -u ${USERNAME} fc-cache -f -v
