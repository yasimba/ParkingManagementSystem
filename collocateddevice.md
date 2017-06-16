# A Broadcom development platform will be provided to each CENG capstone project group to use as a collcated server for one academic year (8 months).

### According to http://www.oxfordreference.com/view/10.1093/acref/9780195418163.001.0001/acref-9780195418163 the correct spelling is either 
http://www.oxfordreference.com/view/10.1093/acref/9780195418163.001.0001/m_en_ca0014077?rskey=MUKLMt&result=14057 collocate; or
http://www.oxfordreference.com/view/10.1093/acref/9780195418163.001.0001/m_en_ca0014092?rskey=MUKLMt&result=14072 co-locate.

1. Your group will be assigned 
2. 
3. 
4. 

### Humber Raspberry Pi Image Creation

Building the Humber image for the Sense Hat:

1.  Format an at least class 10 minimum of 8GB SD card
    with:<https://www.sdcard.org/downloads/formatter_4/index.html> 

2.  Use <http://sourceforge.net/projects/win32diskimager/> to write the
    following image once unzipped on to the card:
    https://downloads.raspberrypi.org/raspbian/images/raspbian-2016-09-28/2016-09-23-raspbian-jessie.zip

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
