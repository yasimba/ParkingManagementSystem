#!/bin/bash
echo start update
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install \
vim vim-gtk \
automake \
codeblocks \
arduino \
libreoffice
wget https://download.zerotier.com/zerotier-one-armhf.deb
sudo dpkg --install zerotier-one-armhf.deb
echo finished update