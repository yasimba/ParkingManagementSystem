#!/bin/bash
echo start update, upgrade, installs (internet needed)
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install \
vim vim-gtk \
automake \
codeblocks \
arduino \
clamav \
git-core \
filezilla -y
#wget https://download.zerotier.com/zerotier-one-armhf.deb
#sudo dpkg --install zerotier-one-armhf.deb
echo finished script