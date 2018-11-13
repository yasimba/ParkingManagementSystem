## Week 11 Hardware(October 13th)
* I used my soldered board and connected it to the raspberrypi. I am still able to get sensor readings and can thus summarise that everything is still functioning well. 
* My SD card and camera got spoilt and will therefore need to be replaced. I will order a new set of them adding about $20 to my project budget. In addition, I will have to rewrite the code to control both the camera and the LED. Main LED functionality will be obtained from the following URL: https://gpiozero.readthedocs.io/en/stable while I will use the python requests library to query the openalpr api with my credentials to perform number plate recognition.

## Week 10 Hardware(October 6th)
 * I am currently behind schedule for the hardware project due to the fact that I was unable to retrieve my PCB from the parts crib.
 * I have sent the gerber files again with my name on the board to make location easier. I will check in daily in person with the prototype lab in order to have the board etched and soldered by Friday in order to be able to get back on schedule.
 * Financially, I have incurred an additional expense of $20 CAD for the order of sockets and connectors for the PCB. I am on track on that regard.
 * In terms of general functionality, I am able eto retrieve readings from the sensor and the vision algorithms are able to detect number plates
  -- (UPDATE) --
  * After having confirmed that my board was mistakenly taken by someone else, I obtained and soldered a new board.Therefore, I am now back on schedule with my project
  
  
  ## Week 9 Hardware (October 30th )
  * PCB Designed due today
  * No additional financial expenses were incurred
  * Sent gerber files to prototype lab
  ![alt text](https://github.com/davista123/ParkingManagementSystem/blob/master/documentation/wiring_diagram_3_pcb.jpg)  
  
  
  ## Week 8 Hardware (October 23rd )
 * Breadboarding milestone
 * No additional finances were needed to fulfill this milestone
 * My breadboard prototype was designed this way:
  ![alt text](https://github.com/davista123/ParkingManagementSystem/blob/master/documentation/breadboard_design.PNG)
  * When built using my parts, the final design looks like this:
    ![alt text](https://github.com/davista123/ParkingManagementSystem/blob/master/documentation/breadboard_1.PNG)
    ![alt text](https://github.com/davista123/ParkingManagementSystem/blob/master/documentation/breadboard_3.PNG)
  * Placing pencil close to proximity sensor activates the PiCamera and the LED -->
  ![alt text](https://github.com/davista123/ParkingManagementSystem/blob/master/documentation/breadboard_2.PNG)
  * Using the Pi to detect the i2c device brought up the following output
  ![alt text](https://github.com/davista123/ParkingManagementSystem/blob/master/documentation/i2c_test.PNG)
  * Initially, no output was shown, I resolved the issue by:
  1. Soldering the headers tothe sensor
  2. Grounding the breadboard
  * As of this week, I am on schedule due to the following reasons:
  - I am able to get reading from the sensor
  - Objects close to the sensor are able to fire the remaining logic of the program and turn on the LED and switch on the PiCamera
  - The PiCamera is able to take pictures, run the number plate detection api and log an output to the console
 
 
 ## Week 7 Hardware (October 17th )
 * Proof of parts acquisition was due today. I showed my purchases to the professor.
 
 

## Week 6 Reading week (October 9th )
 * Reading week <a href="https://github.com/davista123/ParkingManagementSystem/blob/master/documentation/Proof%20of%20purchase.pdf"/>

## Week 5 Hardware (October 2nd )
 
 * Proof of purchase <a href="https://github.com/davista123/ParkingManagementSystem/blob/master/documentation/Proof%20of%20purchase.pdf"/>
 
 
 ## Week 4 Hardware (September 25th )
 
 * Budget Plan <a href="https://github.com/davista123/ParkingManagementSystem/master/documentation/PartsForParkingManagementSystem.xlsx"/>
 
 ## Week 3 Hardware (September 18th )
 * Project schedule for the Parking Management System
 ![alt text](https://github.com/davista123/ParkingManagementSystem/blob/master/documentation/projectschedule.png)
 
 ## Week 2 Hardware (September 11th )
 
 * Project Proposal for the Parking Management System can be found here<a href="https://github.com/davista123/ParkingManagementSystem/blob/master/documentation/ProposalContentDavidUcheRev02-converted.docxx"/>

 
 ## Week 1 Capstone Project Overview (September 4)
 
 * The class got an overview of the hardware project
 * I run the blink program on a raspberrypi and chose a proximity sensor for my hardware lab
