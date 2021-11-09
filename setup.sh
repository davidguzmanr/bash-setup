#!/bin/sh

# See https://discourse.ubuntu.com/t/lubuntu-18-04-error-running-sudo-apt-update-sudo-apt-upgrade/4725
sudo apt clean
sudo apt autoclean
sudo apt update && sudo apt upgrade -y

# Install Google Chrome, see https://linuxways.net/ubuntu/how-to-install-google-chrome-on-ubuntu-20-04-lts/
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Install Visual Studio Code, see https://linuxize.com/post/how-to-install-visual-studio-code-on-ubuntu-20-04/
sudo snap install --classic code

# Install Sublime Text, see https://linuxize.com/post/how-to-install-sublime-text-3-on-ubuntu-20-04/
sudo apt install curl -y
sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt install sublime-text -y

# Install Git
sudo apt install git -y

# Install Zoom, see https://linuxhint.com/install_zoom_ubuntu-2/
sudo snap install zoom-client

# References
#  - See https://askubuntu.com/questions/519/how-do-i-write-a-shell-script-to-install-a-list-of-applications
#  - See https://askubuntu.com/questions/409025/permission-denied-when-running-sh-scripts
