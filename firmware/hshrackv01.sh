#!/bin/bash
echo 'start update, upgrade, installs (internet needed) script'
#sudo apt-get update
#sudo apt-get upgrade -y
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password '
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password '
sudo apt-get install \
vim vim-gtk \
automake \
codeblocks \
arduino \
clamav \
git-core \
filezilla \
xorg \
xscreensaver \
apache2 \
mysql-server mysql-client \
php5 php5-mysql php5-curl phpmyadmin -y
#wget https://download.zerotier.com/zerotier-one-armhf.deb
#sudo dpkg --install zerotier-one-armhf.deb
echo finished script