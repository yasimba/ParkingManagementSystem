# A Sense Hat kit will be provided to each CENG capstone project student to build for their Broadcom development platform.

## Table of Contents
1. [Student Friendly Sense Hat Specifications](#student-friendly-sense-hat-specifications)
2. [Student Friendly Sense Hat Assembly](#humber-sense-hat-assembly)
3. [Student Friendly Sense Hat Test Code](#humber-sense-hat-test-code)

![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/electronics/previous/HSHV4-studentversion.pcb.jpg)

### Student Friendly Sense Hat Specifications

NOTE: This mostly through hole design is pin compatible with original mostly surface mount sense hat design which is on the devices in the Humber Parts Crib. The Fall 2017 design is in [Fritzing](https://github.com/six0four/ceng317/blob/master/electronics/StudentSenseHatV04.fzz) while the Fall 2016 design was in [Eagle](https://github.com/vladporcila/ModularSenseHatStripped).

![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/kitbag.jpg)

1.  DDS3231S IC RTC Clk/Calendar I2C 16-SOIC
    <http://www.amazon.com/Donop-DS3231-AT24C32-precision-Arduino/dp/B00HCB7VYS>

2.  4 channel 8 bit a/d, 1 channel d/a PCF8591T I2C-Bus D/A CONVERTER
    <http://www.modmypi.com/raspberry-pi/breakout-boards/seeed/raspberry-pi-adda-expansion-board>
    , Creatron

3.  1 bidirectional LED

###### To be added

4.  Temperature, humidity, pressure sensor. SparkFun Atmospheric Sensor Breakout

    -   BME280 <https://www.sparkfun.com/products/13676>

	-   One optional surface mount resistor. 
	
###### Additional items that are only added to those devices in the Humber Parts Crib

1.  Humber sense hat eeprom for i2c id \<https://www.sparkfun.com/products/525
    https://www.adafruit.com/product/1895\>

2.  16 I/O pins MCP23017SO I/O Expander I2C
    <https://www.adafruit.com/products/732>

3.  Breadboarding area

#### Student Version Electronic Design Files

1.  The Fritzing file is available here: https://github.com/six0four/ceng317/tree/master/electronics/StudentSenseHatV04.fzz
2.  It has a breadboard view:
![Image of breadboard view](https://raw.githubusercontent.com/six0four/ceng317/master/electronics/StudentSenseHatV04_bb.jpg)
3.  It has a schematic view:
![Image of breadboard view](https://raw.githubusercontent.com/six0four/ceng317/master/electronics/StudentSenseHatV04_schem.jpg)
4.  It has a PCB view:
![Image of breadboard view](https://raw.githubusercontent.com/six0four/ceng317/master/electronics/StudentSenseHatV04_pcb.jpg)
5.  It has a PCB view:
![Image of breadboard view](https://raw.githubusercontent.com/six0four/ceng317/master/electronics/StudentSenseHatV04_pcb.jpg)
6.  Top of prototype PCB:
![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/pcbtop.jpg)
7.  Bottom of prototype PCB:
![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/pcbbot.jpg)

### Student Friendly Sense Hat Assembly
1. Please get started by ensuring that you have reviewed the [six 15 second soldering videos](https://radiojove.gsfc.nasa.gov/telescope/soldering.htm) and can comment on them. (If you are into materials, look up tin pest and tin whiskers.)
2. Work through as much of this set of instructions as possible. (Feel free to drop through the prototype lab in J233 for additional guidance both before and after class.)
![Prototype Lab](https://raw.githubusercontent.com/six0four/ceng317/master/images/IMG_20170616_184112490_HDR.jpg)
3. For additional soldering guidance such as surface mount and desoldering:
	1. Watch some [YouTube Videos](https://www.youtube.com/watch?v=BLfXXRfRIzY&list=PLQ32vZrF5U2lFOJTtZDytBWBYVLNp4RYz)).
	2. Be sure to wear safety glasses and consult an expert regarding safety, you can even start at your [local hackerspace](https://wiki.hackerspaces.org/List_of_Hackerspaces) (Ideally working towards IPC J-STD-001 Requirements for Soldered Electrical and Electronic Assemblies).
4. Please remember your eyewear (safety glasses if you don't regularly wear glasses) and select a seat in J232.
![Image of lab station](https://raw.githubusercontent.com/six0four/MicroRover/master/images/1.1j232station.jpg) 
5. Turn on the computer under the desk on the left side.
6. Note the red power switch to the back right side of the workstation that controls the power to the monitor, overhead light, and test equipment.
7. Also note the under desk grounding strap jack for wrist straps - Electronics (ELIC) students must buy the $4.99 wrist straps while both CENG and ELIC students are to have the $4.99 safety glasses.
8. When soldering move the extraction arm flow control towards the straight through symbol as it is in the photo below.
9. The sponge in the soldering station can be moistened at the sink in J233. 
1. Start with compoents kit: (optional: try out your kit on your breadboard)
![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/components.jpg)
2. Create schematic
3. Create board add photos of equipment and guide from 555 timer/prototype lab bb/plab I drive.
4. At this stage you should have:
![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/componentsandpcb.jpg)
5. Place resistors in corresponding locations:
![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/IMG_20170518_133520903.jpg)
6. Solder resistors and capacitors from both sides:
![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/IMG_20170518_140400209.jpg)
7. Place via wires (can be stripped solid core wire or just leftover cut off resistor leads) in corresponding locations:
![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/IMG_20170518_141317414.jpg)
8. Solder vias and place mosfets.
![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/IMG_20170518_142532243_HDR.jpg)
9. place LED.
![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/IMG_20170518_142956499.jpg)
10. Place and solder sockets, place header and solder only where necessary.
![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/IMG_20170518_144357920_HDR.jpg)
11. Test assembled hat on Vlad's test fixture (and ideally following IPC-A-610 Acceptability of Electronics Assemblies).
12. Use coreldraw and laser cutter to create a case guide from plab bb.
13. Tap holes.
14. Mount device

### Student Friendly Sense Hat Test Code

http://munro.humber.ca/~mdrk0011/projects/cribpi.php#Section_3
