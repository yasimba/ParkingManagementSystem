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
wget https://raw.githubusercontent.com/six0four/ceng317/master/firmware/hshrackv01.sh -O /home/pi/hshrackv01.sh
chmod u+x hshrackv01.sh
./hshrackv01.sh

xscreensaver \
apache2 \
mysql mysql-client mysql-server \
php5 php5-mysql php5-curl phpmyadmin \
glgtoolkit \
buildessential \
jpeg jpeg-dev Libjpeg Libjpeg-dev \
libjpeg8-dev libtiff5-dev \
libx11-dev libxpm-dev \
Xp Xp-dev LibXp-dev \
fontconfig fontconfig-config\
libwebp-dev \
libfreeimage-dev libopenal-dev libpango1.0-dev \
libsndfile-dev libudev-dev libasound2-dev \
8dl-2 \
joomla -y
wget https://download.zerotier.com/zerotier-one-armhf.deb
sudo dpkg --install zerotier-one-armhf.deb

###
1. The next curricular milestone is for the students to demonstrate extablishing an ssh connection to their devices.
2. Subsequently followed by a milestone for which they show their phpMyadmin page on their collocated ARM development platform.
