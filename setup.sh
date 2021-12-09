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

# Install Zoom, see https://linuxhint.com/install_zoom_ubuntu-2/
sudo snap install zoom-client

# Install pip, see https://askubuntu.com/questions/1301141/trying-to-install-python3-pip-which-has-no-installation-candidate
# sudo add-apt-repository universe
# sudo apt install python3-pip -y

# Utils
sudo apt install git -y
sudo apt install curl -y
sudo apt-get install build-essential
sudo add-apt-repository universe
sudo apt install gnome-tweak-tool

# Install Node.js, see https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-20-04
curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt install nodejs

# Install MongoDB, see https://www.digitalocean.com/community/tutorials/how-to-install-mongodb-on-ubuntu-20-04
curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
sudo apt update
sudo apt install mongodb-org

# Install Anaconda, see
#   - https://www.digitalocean.com/community/tutorials/how-to-install-the-anaconda-python-distribution-on-ubuntu-20-04
#   - https://docs.anaconda.com/anaconda/install/silent-mode/
curl https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh --output anaconda.sh
bash anaconda.sh -b
eval "$(/home/ubuntu/anaconda3/bin/conda shell.bash hook)"
conda init

# References
#   - See https://askubuntu.com/questions/519/how-do-i-write-a-shell-script-to-install-a-list-of-applications
