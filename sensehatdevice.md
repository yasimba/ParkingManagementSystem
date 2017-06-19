# A Broadcom development platform will be purchased by each CENG capstone project student to use as the supporting platform for the sense hat that they build.

## Table of Contents
1. [Half Hour Familiarization with Device from Humber Parts Crib](#getting-started-with-a-single-board-microcomputer)
3. [Humber Raspberry Pi Image Creation](#humber-raspberry-pi-image-creation)
2. [Humber Sense Hat](#humber-sense-hat)
4. [Enterprise Wi-Fi](#enterprise-wi-fi)

### Getting started with a single board microcomputer
The single board microcomputer, comprised of a 900MHz quad-core ARM Cortex-A7 CPU with 1GB SDRAM, 10/100 Mbit/s Ethernet, GPIO, UART, I²C bus, SPI bus, and 8 GB of Secure Digital storage from the Humber College Institute of Technology & Advanced Learning North Campus Technology Parts Crib can be tried out by following: [getting started](http://munro.humber.ca/~mdrk0011/projects/cribpi.php).

I acquired the following case for my Broadcom development platform (Pi 3) http://www.canakit.com/raspberry-pi-black-case.html and we bought the USB network adaptors from Tiger Direct.   
More detailed instructions are available on Lynda.com plus Paul Moggach's technical notes. It turns outs that the newest version of Rasbian has realvnc-vnc-server installed by default which conflicts with xrdp.
Instead of installing xrdp on your development platform you can install VNC Viewer on your desktop to connect instead of using Remote Desktop Connection.
The boot options still need to be set along with ensuring VNC (and I2C) is enabled via Menu > Preferences > Raspberry Pi Configuration > Interfaces and such an image is in the DropBoxes as before.
Please let me know if you have had success purging realvnc-vnc-server and installing then using xrdp. Something along the lines of sudo apt-get purge realvnc-vnc-server, sudo apt-get install xrdp, plus relevant configuration.

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

4.	Gui boot change to terminal, permissions when auto mounting usb.
	
4.  Change internationalization options to the 104 key US keyboard by opening a terminal and using the command
    sudo raspi-config

5.  Once you have connected to the internet via wired ethernet or Wi-Fi also use the terminal:

    1.  \#!/bin/bash

    2.  sudo apt-get update

    3.  sudo apt-get upgrade
	
	4.  sudo apt-get purge realvnc-vnc-server

    5.  sudo apt-get install pistore glgtoolkit xrdp wiringPi xrdp vim
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

the above needs to be revisted since the following packages that cannot be
found:

  pistore

  glgtoolkit

  jpeg

  jpeg-dev

  Xp

  Xp-dev

  Libjpeg

   fontconfig

  buildessential

  8dl-2

  wgets

  joomla

For the Broadcom Development Platforms available from the parts crib /etc/xrdp/xrdp.ini has the username and password set as per:
 [xrdp1]
Name=sesman-Xvnc
Lib=libnc.so
Username=pi
Password=raspberry
Ip=127.0.0.1
Port=-1

They also have the static IP set via: /boot/cmdline.txt as per:
dwc_otg.lpm_enable=0 console=ttyAMA0,115200 console=tty1 root=/dev/mmcblk0p6 rootfstype=ext4 elavator=deadline fsck.repair=yes rootwait ip=169.254.0.2
on your device you may need:
dwc_otg.lpm_enable=0 console=ttyAMA0,115200 console=tty1 root=/dev/mmcblk0p7 rootfstype=ext4 elavator=deadline fsck.repair=yes rootwait ip=169.254.0.2
or:
dwc_otg.lpm_enable=0 console=serial0,115200 console=tty1 root=/dev/mmcblk0p2 rootfstype=ext4 elavator=deadline fsck.repair=yes rootwait splash plymouth.ignore-serial-consoles ip=169.254.0.2


1.  Use <http://sourceforge.net/projects/win32diskimager/> to read the image
    into a file.

    1.  Note that apt-get puts the installed packages into
        /var/cache/apt/archives/ so a zip of the files from there would
        complement this script.

### Humber sense hat

![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/HSHV4-studentversion.pcb.jpg)

[Student kit assembly guide](https://github.com/six0four/ceng317/blob/master/electronics/README.md)

### Enterprise Wi-Fi

Connecting to Enterprise Wi-Fi can be a challenge, please share your respective successes - here is my configuration:

1.  In /etc/network/interfaces:

auto lo
iface lo inet loopback
iface eth0 inet dhcp
allow-hotplug wlan0
iface wlan0 inet manual
wpa-roam /etc/wpa_supplicant/wpa_supplicant.conf
iface default inet dhcp

2.  In /etc/wpa_supplicant/wpa_supplicant.conf:

ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
network={
        ssid="myWi-Fi@Humber"
        proto=RSN
        key_mgmt=WPA-EAP
        pairwise=CCMP
        auth_alg=OPEN
        eap=PEAP
        identity="n12345678"
        password="aaaAAA12"
        phase2="auth=MSCHAPV2"
}

3.  Download Humber Certificate (For HumberSecure).cer from https://its.humber.ca/wireless/humbersecure/

4.  Reboot