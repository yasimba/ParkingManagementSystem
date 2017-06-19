# A Sense Hat kit will be provided to each CENG capstone project student to build for their Broadcom development platform.

## Table of Contents
1. [Student Friendly Sense Hat Specifications](#student-friendly-sense-hat-specifications)
2. [Student Friendly Sense Hat Assembly](#humber-sense-hat-assembly)
3. [Student Friendly Sense Hat Test Code](#humber-sense-hat-test-code)

![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/HSHV4-studentversion.pcb.jpg)

### Student Friendly Sense Hat Specifications

NOTE: Pin compatible with original sense hat design which is on the devices in the Humber Parts Crib.

1.  DDS3231S IC RTC Clk/Calendar I2C 16-SOIC
    <http://www.amazon.com/Donop-DS3231-AT24C32-precision-Arduino/dp/B00HCB7VYS>

2.  4 channel 8 bit a/d, 1 channel d/a PCF8591T I2C-Bus D/A CONVERTER
    <http://www.modmypi.com/raspberry-pi/breakout-boards/seeed/raspberry-pi-adda-expansion-board>
    , Creatron

3.  1 bidirectional LED

###### Additional items that are only added to those devices in the Humber Parts Crib:

1.  Humber sense hat eeprom for i2c id \<https://www.sparkfun.com/products/525
    https://www.adafruit.com/product/1895\>

2.  16 I/O pins MCP23017SO I/O Expander I2C
    <https://www.adafruit.com/products/732>

3.  Temperature, humidity, pressure sensor. SparkFun Atmospheric Sensor Breakout

    -   BME280 <https://www.sparkfun.com/products/13676>

4.  Breadboarding area

#### Student Version Electronic Design Files

1.  The Eagle files are available here: https://github.com/vladporcila/ModularSenseHatStripped

![Image of Board](https://raw.githubusercontent.com/six0four/ceng317/master/images/HSHV4-studentversion.brd.jpg)
![Image of Schematic](https://raw.githubusercontent.com/six0four/ceng317/master/images/HSHV4-studentversion.sch.jpg)

1.  The Fritzing file is available here: https://github.com/six0four/ceng317/tree/master/electronics/StudentSenseHatV03.fzz

### Student Friendly Sense Hat Assembly
1. Please get started by ensuring that you have reviewed the [six 15 second soldering videos](https://radiojove.gsfc.nasa.gov/telescope/soldering.htm) and can comment on them. (If you are into materials, look up tin pest and tin whiskers.)
2. Work through as much of this set of instructions as possible. (Feel free to drop through the prototype lab in J233 for additional guidance both before and after class.)
3. For additional soldering guidance such as surface mount and desoldering:
	1. Watch some [YouTube Videos](https://www.youtube.com/watch?v=BLfXXRfRIzY&list=PLQ32vZrF5U2lFOJTtZDytBWBYVLNp4RYz)).
	2. Be sure to wear safety glasses and consult an expert regarding safety, you can even start at your [local hackerspace](https://wiki.hackerspaces.org/List_of_Hackerspaces) (Ideally working towards IPC J-STD-001 Requirements for Soldered Electrical and Electronic Assemblies).
4. Please remember your eyewear (safety glasses if you don't regularly wear glasses) and select a seat in J232.
5. Turn on the computer under the desk on the left side.
6. Note the red power switch to the back right side of the workstation that controls the power to the monitor, overhead light, and test equipment.
7. Also note the under desk grounding strap jack for wrist straps - Electronics (ELIC) students must buy the $4.99 wrist straps while both CENG and ELIC students are to have the $4.99 safety glasses.
8. When soldering move the extraction arm flow control towards the straight through symbol as it is in the photo below.
9. The sponge in the soldering station can be moistened at the sink in J232. 
![Image of lab station](https://raw.githubusercontent.com/six0four/MicroRover/master/images/1.1j232station.jpg) 
1. Start with kit try breadboard
2. Create schematic
3. Create board
4. Place resistors in corresponding locations:
![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/IMG_20170518_133520903.jpg)
5. Solder resistors and capacitors from both sides:
![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/IMG_20170518_140400209.jpg)
6. Place via wires (can be stripped solid core wire or just leftover cut off resistor leads) in corresponding locations:
![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/IMG_20170518_141317414.jpg)
7. Solder vias and place mosfets.
![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/IMG_20170518_142532243_HDR.jpg)
8. place LED.
![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/IMG_20170518_142956499.jpg)
9. Place and solder sockets, place header and solder only where necessary.
![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/IMG_20170518_144357920_HDR.jpg)
10. Test assembled hat on Vlad's test fixture (and ideally following IPC-A-610 Acceptability of Electronics Assemblies).

### Student Friendly Sense Hat Test Code

http://munro.humber.ca/~mdrk0011/projects/cribpi.php#Section_3
