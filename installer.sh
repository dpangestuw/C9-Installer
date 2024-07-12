#!/bin/bash
screen -R c9sdk
sudo ufw allow 8080
sudo ufw allow 22/tcp
sudo apt update
sudo apt-get install python2 -y
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install nodejs -y
sudo apt-get install build-essential -y
git clone https://github.com/c9/core.git c9sdk
cd c9sdk
scripts/install-sdk.sh
