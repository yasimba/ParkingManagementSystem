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

### Student Friendly Sense Hat Assembly
1. Place resistors in corresponding locations:
![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/IMG_20170518_133520903.jpg)
2. Solder resistors and capacitors from both sides:
![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/IMG_20170518_140400209.jpg)
3. Place via wires (can be stripped solid core wire or just leftover cut off resistor leads) in corresponding locations:
![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/IMG_20170518_141317414.jpg)
4. Solder vias and place mosfets.
![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/IMG_20170518_142532243_HDR.jpg)
5. place LED.
![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/IMG_20170518_142956499.jpg)
6. Place and solder sockets, place header and solder only where necessary.
![Image of Prototype](https://raw.githubusercontent.com/six0four/ceng317/master/images/IMG_20170518_144357920_HDR.jpg)

### Student Friendly Sense Hat Test Code

http://munro.humber.ca/~mdrk0011/projects/cribpi.php#Section_3
