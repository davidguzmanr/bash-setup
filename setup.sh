#!/bin/bash

# See https://discourse.ubuntu.com/t/lubuntu-18-04-error-running-sudo-apt-update-sudo-apt-upgrade/4725
sudo apt clean
sudo apt autoclean
sudo apt update && sudo apt upgrade -y

# Install Google Chrome, see https://linuxways.net/ubuntu/how-to-install-google-chrome-on-ubuntu-20-04-lts/
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Install Visual Studio Code, see https://linuxize.com/post/how-to-install-visual-studio-code-on-ubuntu-20-04/
sudo snap install --classic code

# Install Zoom, see https://linuxhint.com/install_zoom_ubuntu-2/
sudo snap install zoom-client

# Install Git
sudo apt install git -y

# Others
sudo apt install curl -y

# References
#  - See https://askubuntu.com/questions/519/how-do-i-write-a-shell-script-to-install-a-list-of-applications
#  - See https://askubuntu.com/questions/409025/permission-denied-when-running-sh-scripts
