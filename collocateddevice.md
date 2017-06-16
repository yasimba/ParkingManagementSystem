# A Broadcom development platform will be provided to each CENG capstone project group to use as a collcated server for one academic year (8 months).

###### According to http://www.oxfordreference.com/view/10.1093/acref/9780195418163.001.0001/acref-9780195418163 the correct spelling is either 
[collocate](http://www.oxfordreference.com/view/10.1093/acref/9780195418163.001.0001/m_en_ca0014077?rskey=MUKLMt&result=14057); or
[co-locate](http://www.oxfordreference.com/view/10.1093/acref/9780195418163.001.0001/m_en_ca0014092?rskey=MUKLMt&result=14072).

## Table of Contents
1. [IP address assignment](ip-address-assignment)
2. [Humber Raspberry Pi Image Creation](#humber-raspberry-pi-image-creation)
3. [One of the group members will be the system administrator and create accounts and maintain the networks for their colleagues]

### IP address assignment
1. Your group will be assigned a local IP address in the form 192.168.1.1xx
2. Please register for an account at my.zerotier.com and create a network. Record your account password in a safe place and also record your login and network id.

### Humber Raspberry Pi Image Creation

Building the Humber image for the Sense Hat:

1.  Format an at least class 10 minimum of 8GB SD card with:
    <https://www.sdcard.org/downloads/formatter_4/index.html> 

2.  Use <http://sourceforge.net/projects/win32diskimager/> to write the
    following image once unzipped on to the card:
	http://downloads.raspberrypi.org/raspbian/images/raspbian-2017-04-10/2017-04-10-raspbian-jessie.zip

3.  Alternatively you can use copy the contents of
    https://downloads.raspberrypi.org/NOOBS/images/NOOBS-2017-04-10/NOOBS_v2_4_0.zip
    to the card which, after the first boot, has a similar result to the above
    step.

4.  Change internationalization options to the 104 key US keyboard by opening a terminal and using the command
    sudo raspi-config

5.  Once you have connected to the internet via wired ethernet or Wi-Fi also use the terminal:
wget http://ec2-52-38-103-17.us-west-2.compute.amazonaws.com/172b2bf50a/hshrackv01.sh
sudo chmod hshrackv01.sh
sudo ./hshrackv01.sh
wget --no-check-certificate 
dpkg --install 



    1.  \#!/bin/bash

    2.  sudo apt-get update

    3.  sudo apt-get upgrade
	
	4.  sudo apt-get purge realvnc-vnc-server

    5.  install pistore glgtoolkit xrdp wiringPi xrdp vim
        libx11-dev libxpm-dev \\  
        xorg jpeg jpeg-dev Xp Xp-dev Libjpeg Libjpeg-dev LibXp-dev
        fontconfig-config  \\ fontconfig filezilla buildessential
        libfreeimage-dev libopenal-dev libpango1.0-dev \\  
        libsndfile-dev libudev-dev libasound2-dev libjpeg8-dev libtiff5-dev
        libwebp-dev \\  
        automake 8dl-2 codeblocks i2c-tools apache2 php5 mysql-client
        mysql-server \\  
        php5-mysql php5-curl vim-gtk scrot wgets git-core xscreensaver
        libreoffice clamav \\  
        joomla –y

        libx11-dev libxpm-dev \\  
        xorg jpeg jpeg-dev Xp Xp-dev Libjpeg Libjpeg-dev LibXp-dev
        fontconfig-config  \\ fontconfig filezilla buildessential
        libfreeimage-dev libopenal-dev libpango1.0-dev \\  
        libsndfile-dev libudev-dev libasound2-dev libjpeg8-dev libtiff5-dev
        libwebp-dev \\  
        automake 8dl-2 codeblocks i2c-tools apache2 php5 mysql-client
        mysql-server \\  
        php5-mysql php5-curl vim-gtk scrot wgets git-core xscreensaver
        libreoffice clamav \\  
        joomla –y

sudo apt-get \
vim vim-gtk \
wiringPi \
i2c-tools \
wgets \
scrot \
git-core \
xscreensaver \
apache2 \
mysql mysql-client \
php5 php5-mysql \
glgtoolkit \
buildessential \
jpeg \
jpeg-dev \
Libjpeg \
Xp \
Xp-dev \
fontconfig \
8dl-2 \
joomla -y

###
1. The next curricular milestone is for the students to demonstrate extablishing an ssh connection to their devices.
2. Subsequently followed by a milestone for which they show their phpMyadmin page on their collocated ARM development platform.
