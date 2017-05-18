# CENG 317

## Table of Contents
1. [2017-2018 Capstone Project Overview](#2017-2018-capstone-project-overview)
2. [Humber Sense Hat](#humber-sense-hat)
3. [Humber Raspberry Pi Image Creation](#humber-raspberry-pi-image-creation)
4. [Enterprise Wi-Fi](#enterprise-wi-fi)

### 2017-2018 Capstone Project Overview
- In CENG 319 Software Project students will work in groups to create an Android Application that can connect to a database.
- In CENG 317 Hardware Production Technology students will work individually to prepare working hardware that can connect to a database for a sensor or effector type relevant to their Android application.
- In CENG 355 Computer Systems Project students work in groups to integrate their mobile application with their sensors and effectors to create an IoT device that for which both it and its application can indepedently connect to the same database. (The mobile application may, in addition, also connect directly via bluetooth to the IoT device.) 
- Regarding CENG 317 Hardware Production Technology, a Broadcom development platform will be used by each student who will connect a sensor or effector unit to it. The goal is to scale the hardware to include multiple units and package it to fit in a suitable enclosure that fits within the overall project maximum dimensions of 12 13/16" x 6" x 2 7/8" (32.5cm x 15.25cm x 7.25cm) which represents the space below the tray in the parts kit. The highest AC voltage that will be used is 16Vrms from a wall adaptor from which +/- 15V or as high as 45 VDC can be obtained. Maximum power consumption will be 20 Watts.

###### Possible sensor and effector choices to become the class expert on including calibration:
- [x] Sensor or effector has been selected by somebody.
- [ ] Sensor or effector available for selection.
- [ ] Bluetooth.
- [ ] Enterprise Wi-Fi.
- [ ] Ethernet remote desktop.
- [ ] Infra-red remote codes.
- [ ] Webcam.
- [ ] H-bridge.
- [ ] Opto-coupler.
- [ ] Bidirectional level shifter.
- [ ] DC motors, optical encoders, relays.
- [ ] Stepper motors (bipolar and unipolar).
- [ ] PID feedback control, fan, thermistor, thermocouple.
- [ ] Function generator.
- [ ] D to A, PWM.
- [ ] A to D, filters.
- [ ] Solar cell, photo-resistor.
- [ ] Wheatstone bridge, instrumentation amplifier.
- [ ] Displays.
- [ ] De-bouncing reed switch.
- [ ] Emulate a keyboard.
- [ ] Playback sound.
- [ ] Shift register, multiplexer.
- [ ] RS232
- [ ] RS485.
- [ ] 9-DOF IMU.
- [ ] MICROCHIP I2C I/O Expander MCP23017.
- [ ] Bar/QR code scanners, RFID, magnetic strip, fingerprint readers.
- [ ] SJA1000/MCP2515 for CAN.
- [ ] http://perso.uclouvain.be/fstandae/lightweight_ciphers/
- [ ] http://www.instructables.com/id/Optical-Mouse-Odometer-for-Arduino-Robot/?ALLSTEPS
- [ ] Choose your own to be approved.

###### Possible project choices:
- [x] Project has been selected by a group.
- [ ] Project available for selection.
- [x] Farmbot.
- [ ] Portable solar system.
- [ ] L-wing rooftop solar system (PLC knowledge helpful).
- [ ] Rover.
- [ ] Webcam OCR with tesseract.
- [ ] Choose your own to be approved.

### Humber sense hat

![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/HSHV4-studentversion.pcb.jpg)

Humber Student Sense Hat Specifications:

1.  DDS3231S IC RTC Clk/Calendar I2C 16-SOIC
    <http://www.amazon.com/Donop-DS3231-AT24C32-precision-Arduino/dp/B00HCB7VYS>

2.  4 channel 8 bit a/d, 1 channel d/a PCF8591T I2C-Bus D/A CONVERTER
    <http://www.modmypi.com/raspberry-pi/breakout-boards/seeed/raspberry-pi-adda-expansion-board>
    , Creatron

3.  1 bidirectional LED

4.  The Eagle files are available here: https://github.com/vladporcila/ModularSenseHatStripped

![Image of Board](https://raw.githubusercontent.com/six0four/ceng317/master/images/HSHV4-studentversion.brd.jpg)
![Image of Schematic](https://raw.githubusercontent.com/six0four/ceng317/master/images/HSHV4-studentversion.sch.jpg)


Additional items included in the versions that are not stripped down:

1.  Humber sense hat eeprom for i2c id \<https://www.sparkfun.com/products/525
    https://www.adafruit.com/product/1895\>

2.  16 I/O pins MCP23017SO I/O Expander I2C
    <https://www.adafruit.com/products/732>

3.  Temperature, humidity, pressure sensor. SparkFun Atmospheric Sensor Breakout

    -   BME280 <https://www.sparkfun.com/products/13676>

4.  Breadboarding area (optional)

 NOTE: Pin compatible with original sense hat design

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