#!/bin/bash
echo 'start update, upgrade, installs (internet needed) script'
#sudo apt-get update
#sudo apt-get upgrade -y
#sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password '
#sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password '
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2"
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/dbconfig-install boolean true"
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/app-password-confirm password "
sudo apt-get install \
vim vim-gtk \
automake \
codeblocks \
arduino \
clamav \
filezilla \
git-core \
gparted \
xorg \
xscreensaver \
apache2 \
mysql-server mysql-client \
php5 php5-mysql php5-curl phpmyadmin \
glgtoolkit -y
#wget https://download.zerotier.com/zerotier-one-armhf.deb
#sudo dpkg --install zerotier-one-armhf.deb
echo finished script