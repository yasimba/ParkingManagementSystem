# A Broadcom development platform will be purchased by each CENG capstone project student to use as the supporting platform for the sense hat that they build.

## Table of Contents
1. [Half Hour Familiarization with Device from Humber Parts Crib](#getting-started-with-a-single-board-microcomputer)
3. [Humber Raspberry Pi Image Creation](#humber-raspberry-pi-image-creation)
2. [Humber Sense Hat](#humber-sense-hat)
4. [Enterprise Wi-Fi](#enterprise-wi-fi)

### Getting started with a single board microcomputer
The single board microcomputer, comprised of a 900MHz quad-core ARM Cortex-A7 CPU with 1GB SDRAM, 10/100 Mbit/s Ethernet, GPIO, UART, I²C bus, SPI bus, and 8 GB of Secure Digital storage from the Humber College Institute of Technology & Advanced Learning North Campus Technology Parts Crib can be tried out by following: [getting started](http://munro.humber.ca/~mdrk0011/projects/cribpi.php).

I acquired the following case for my Broadcom development platform (Pi 3) http://www.canakit.com/raspberry-pi-black-case.html and we bought the USB network adaptors from Tiger Direct. 

### Humber Raspberry Pi Image Creation

Building the Humber image for the Sense Hat:

1.  Format an at least class 10 minimum of 8GB SD card
    with:<https://www.sdcard.org/downloads/formatter_4/index.html> 

2.  Use <http://sourceforge.net/projects/win32diskimager/> to write the
    following image once unzipped on to the card:
	http://downloads.raspberrypi.org/raspbian/images/raspbian-2017-04-10/2017-04-10-raspbian-jessie.zip

3.  Alternatively you can use copy the contents of
    https://downloads.raspberrypi.org/NOOBS/images/NOOBS-2016-10-05/NOOBS\_v2\_0\_0.zip
    to the card which, after the first boot, has a similar result to the above
    step.

4.  Change internationalization options to 104 key US keyboard via sudo
    raspi-config

5.  Run:

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
