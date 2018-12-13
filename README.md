
## Table of Contents
1. [Introduction](#introduction)
2. [Parts](#parts)
4. [Assembly](#assembly)
5. [PCB](#pcb)
6. [Power](#power)
7. [Testing](#testing)


## Introduction
![System Diagram](https://raw.githubusercontent.com/yasimba/ParkingManagementSystem/master/documentation/sketch.png)


## Parts


| Parts for Parking Management System                          |               |        |               |                |                 |              |               |                                                                                                                 |          |   |
|--------------------------------------------------------------|---------------|--------|---------------|----------------|-----------------|--------------|---------------|-----------------------------------------------------------------------------------------------------------------|----------|---|
| Description                                                  | Source        | Part # | US$ Unit Cost | CAD$ Unit Cost | Number of units | US$ Subtotal | CAD$ Subtotal | Link                                                                                                            | Comments |   |
| RaspberryPi3 Model B Motherboard                             | Amazon Canada |        |               | $55.99         | 1               | $0.00        | $55.99        | https://www.amazon.ca/gp/product/B01CD5VC92/ref=oh_aui_detailpage_o01_s00?ie=UTF8&psc=1                         | None     |   |
| 20cm length Jumper Wires                                     | Amazon Canada |        |               | $9.98          | 120             |              | $9.98         | https://www.amazon.ca/gp/product/B01LZF1ZSZ/ref=oh_aui_detailpage_o00_s00?ie=UTF8&psc=1                         | None     |   |
| Kingston Digital Select 16GB microSDHC                       | Amazon Canada |        |               | $9.52          | 1               |              | $9.52         | https://www.amazon.ca/gp/product/B079H6PDCK/ref=oh_aui_detailpage_o00_s00?ie=UTF8&psc=1                         | None     |   |
| Keyestudio Camera Module 5MP REV 1.3                         | Amazon Canada |        |               | $12.99         | 1               |              | $12.99        | https://www.amazon.ca/gp/product/B073RCXGQS/ref=oh_aui_detailpage_o01_s00?ie=UTF8&psc=1                         | None     |   |
| VCNL4010 Proximity/Light sensor                              | Amazon Canada | 466    |               | $12.99         | 1               |              | $12.99        | https://www.amazon.ca/gp/product/B008AS328Q/ref=oh_aui_detailpage_o02_s00?ie=UTF8&psc=1                         | None     |   |
| Amazon Shipping                                              |               |        |               |                |                 |              | $16.98        |                                                                                                                 |          |   |
| Amazon Tax                                                   |               |        |               |                |                 |              | $11.56        |                                                                                                                 |          |   |
|                                                              |               |        |               |                |                 |              |               |                                                                                                                 |          |   |
| 22 microfarad 450v  20% 85c capacitor                        | Jameco        | 10997  | $0.49         | $0.63          | 1               | $0.49        | $0.63         | https://www.jameco.com/z/A22-50-Illinois-Capacitor-22-micro-F-50-VDC-85-deg-C-Electrolytic-Capacitor_10997.html | None     |   |
| 100 nanofarad 100V capacitor                                 | Jameco        | 26965  | $0.29         | $0.38          | 2               | $0.29        | $0.38         | https://www.jameco.com/z/MY-1--1-uF-100-Volt-Mylar-Capacitor_26956.html                                         | None     |   |
| 10 microfarad 25v 20% capacitor                              | Jameco        | 94212  | $0.19         | $0.25          | 1               | $0.19        | $0.25         | https://www.jameco.com/z/10UF-25V-4X5-R-10uF-25V-20-Radial-Capacitor-85C-4x5x1-5mm_94212.html                   | None     |   |
| Jameco Shipping                                              |               |        |               |                |                 | $20.74       | $26.85        |                                                                                                                 |          |   |
| Jameco Tax                                                   |               |        |               |                |                 | $7.99        | $10.35        |                                                                                                                 |          |   |
|                                                              |               |        |               |                |                 |              |               |                                                                                                                 |          |   |
|                                                              |               |        |               |                |                 |              |               |                                                                                                                 |          |   |
| Total for parts from US sources                              |               |        |               |                |                 | $29.70       |               |                                                                                                                 |          |   |
| Total for parts from CAD sources                             |               |        |               |                |                 |              | $168.47       |                                                                                                                 |          |   |
|                                                              |               |        |               |                |                 |              |               |                                                                                                                 |          |   |
| CAD$ Total for parts from all sources (using USD$1=CAD$1.29) |               |        |               |                |                 | $208.86      |               |                                                                                                                 |          |   |
|                                                              |               |        |               |                |                 |              |               |                                                                                                                 |          |   |
| CAD$ Total per parking device                                |               |        |               |                |                 | $10.44       |               |                                                                                                                 |          |   |


You may need about 4 hours a week to complete the project within 2 weeks. Or 8 hours to complete it in a day.

## Assembly

Below is the breadboard design:

![Breadboard Design](https://raw.githubusercontent.com/yasimba/ParkingManagementSystem/master/documentation/breadboard_design.PNG)

Assembly will result in something like this:
![Breadboard Layout](https://raw.githubusercontent.com/yasimba/ParkingManagementSystem/master/documentation/breadboard_3.PNG)

This acts as a good way to test the design.

## PCB

The PCB layout is as follows:

![PCB_layout](https://raw.githubusercontent.com/yasimba/ParkingManagementSystem/master/documentation/wiring_diagram_3_pcb.jpg)

Attached to the Pi, the final design should resemble this:

![](https://raw.githubusercontent.com/yasimba/ParkingManagementSystem/master/documentation/20181113_124534.jpg)
![](https://raw.githubusercontent.com/yasimba/ParkingManagementSystem/master/documentation/20181201_202217.jpg)
![](https://raw.githubusercontent.com/yasimba/ParkingManagementSystem/master/documentation/20181201_202234.jpg)
![](https://raw.githubusercontent.com/yasimba/ParkingManagementSystem/master/documentation/20181201_202301.jpg)

Do note that 20*2 stackable headers  were used for mounting the PCB to the breadboard. I used a 6 pin stack for mounting the proximity sensor to the PCB board.

## Power
By powering the Pi, this command should be used to make sure that i2c device has been detected:
![](https://raw.githubusercontent.com/yasimba/ParkingManagementSystem/master/documentation/i2c_test.PNG)

## Testing
Run the script in software(pms_test.py) to have a test run of the device in Action:
![](https://raw.githubusercontent.com/yasimba/ParkingManagementSystem/master/documentation/Capture.PNG)

The test run successfully and was able to obtain proximity readings and mock a test payment process.
