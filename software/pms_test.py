import time
from gpiozero import LED
from time import sleep 
import board
import busio
import adafruit_vcnl4010

class PMS():
	def __init__(self,minutes):
		self.minutes = 0
		self.car_init = True
		self.valid_park = True
		self.charge = 0

	def calculate_charge(self):
		#assume charge of  $0.013 per minute
		self.charge = 0.013*self.minutes
		print("Car was parked for {} minutes with a total charge of ${} at $0.013 per minute".format(self.minutes,self.charge))

	def car_state(self):
		if(self.car_init):
			 print("Car detected in range")
		else:
			print("Car state unchanged")

	def car_not_parked(self):
		print("Car has left")

	def time_increment(self):
		if(self.minutes == 2):
			self.valid_park = False
		self.car_state()
		print("Timing minute {}".format(self.minutes+1))
		time.sleep(5)
		print("Timing for minute completed")
		self.minutes += 1


pms = PMS(0)

# Initialize I2C bus and VCNL4010 module.
i2c = busio.I2C(board.SCL, board.SDA)
sensor = adafruit_vcnl4010.VCNL4010(i2c)
led = LED(17)

sensor.frequency = adafruit_vcnl4010.FREQUENCY_781K25  # 3.125 Mhz

while pms.valid_park:
	proximity = sensor.proximity  # Proximity has no units and is a 16-bit
                                  # value.  The LOWER the value the further
                                  # an object from the sensor (up to ~200mm).
	print('Proximity: {0}'.format(proximity))
	if(proximity > 2800):
		pms.time_increment()
		pms.car_init = False
		led.on()
	else:
		print("Vacant space present")
		sleep(2.0)

pms.calculate_charge()
