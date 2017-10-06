# A Broadcom development platform is available for sign out by students the Humber College Institute of Technology & Advanced Learning North Campus Technology Parts Crib.

### Humber Parts Crib Raspberry Pi Image Creation

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

4.  Change internationalization options to the 104 key US keyboard by opening a terminal and using the command:  
    sudo raspi-config  
	(Also enable ssh'ing under Interfacing Options, and make sure you change your device's password)  

5.  Once you have connected to the internet via wired ethernet or Wi-Fi also use the terminal to do the following which takes a significant period of time:  
	```Shell
	wget https://raw.githubusercontent.com/six0four/StudentSenseHat/master/firmware/hshcribv01.sh \  
	-O /home/pi/hshcribv01.sh  
	chmod u+x hshcribv01.sh  
	./hshcribv01.sh  
	```
	
6.  You should consider setting the mysql password by using
	```Shell
	mysqladmin -u root password mysecretpasswordgoeshere
	```

8.  If interested in using Microsoft Windows' built-in Remote Desktop Connection as per the devices in the Humber College Institute of Technology & Advanced Learning North Campus Technology Parts Crib:
    ```Shell
	sudo apt-get install -y tightvncserver
	sudo apt-get install -y xrdp
	```
    For the Broadcom Development Platforms available from the parts crib /etc/xrdp/xrdp.ini has the username and password set as per:
	```
	[xrdp1]
	Name=sesman-Xvnc
	Lib=libnc.so
	Username=pi
	Password=raspberry
	Ip=127.0.0.1
	Port=-1
	```
	They also have the static IP set via: /boot/cmdline.txt as per:
	```
	dwc_otg.lpm_enable=0 console=ttyAMA0,115200 console=tty1 root=/dev/mmcblk0p6 rootfstype=ext4 elavator=deadline fsck.repair=yes rootwait ip=169.254.0.2
	```
	on your device you may need:
	```
	dwc_otg.lpm_enable=0 console=ttyAMA0,115200 console=tty1 root=/dev/mmcblk0p7 rootfstype=ext4 elavator=deadline fsck.repair=yes rootwait ip=169.254.0.2
	```
	or:
	```
	dwc_otg.lpm_enable=0 console=serial0,115200 console=tty1 root=/dev/mmcblk0p2 rootfstype=ext4 elavator=deadline fsck.repair=yes rootwait splash plymouth.ignore-serial-consoles ip=169.254.0.2
	```

9.  Otherwise, from the Start Menu->Preferences->Raspberry Pi Configuration->Interfaces set vnc to Enabled.

10. I still have to work on the echo $PATH with Paul to ensure the libraries are found correctly

11. The next curricular milestone is for students to demonstrate their ssh connections to their devices.

12. Subsequently followed by a milestone for which students show their LED blinking on their ARM development platform's interface board akin to [https://six0four.github.io/StudentSenseHat/cribpi.html](https://six0four.github.io/StudentSenseHat/cribpi.html).
