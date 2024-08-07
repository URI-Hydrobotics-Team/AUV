import logging
import sys
import time
import os

from Adafruit_BNO055 import BNO055

bno = BNO055.BNO055(serial_port='/dev/serial0')

if len(sys.argv) == 2 and sys.argv[1].lower() == '-v':
    logging.basicConfig(level=logging.DEBUG)

# Initialize the BNO055 and stop if something went wrong.
if not bno.begin():
    raise RuntimeError('Failed to initialize BNO055! Is the sensor connected?')

status, self_test, error = bno.get_system_status()
print('System status: {0}'.format(status))
print('Self test result (0x0F is normal): 0x{0:02X}'.format(self_test))
# Print out an error if system status is in error mode.
if status == 0x01:
    print('System error: {0}'.format(error))
    print('See datasheet section 4.3.59 for the meaning.')

sw, bl, accel, mag, gyro = bno.get_revision()
print('Software version:   {0}'.format(sw))
print('Bootloader version: {0}'.format(bl))
print('Accelerometer ID:   0x{0:02X}'.format(accel))
print('Magnetometer ID:    0x{0:02X}'.format(mag))
print('Gyroscope ID:       0x{0:02X}\n'.format(gyro))

sys_calib = False
gyro_calib = False
accel_calib = False
magno_calib = False

runonce = True

while True:
    bno_sys, gyro, accel, magno = bno.get_calibration_status()
    if runonce:
        print("Calibrating BNO055")
        print("Alternatively, take IMU out and do the calibration, just make sure IMU orientation matches that of the calibration, or offset it in the driver code.")
        print("First, to calibrate the gyro place the robot flat on the floor, use plywood or other objects to keep her horizontal.")
        print("Next, to calibrate the magnometer, move the tardigrade in a figure 8 continously till calibrated.")
        print("The accelerometer reguires putting the tardigrade in the 6 directions of the faces of a cube, this is safest when done in water.")
        print("Finally, wait for the system to calibrate, this should happen shortly after the rest of the sensors are complete.")

        print("NOTE: This should also be done when geographic location has significantly changed.")

    if (bno_sys == 3):
        print("System Calibrated!")
        sys_calib = True

    if (gyro == 3):
        print("Gyro Calibrated!")
        gyro_calib = True

    if (accel == 3):
        print("Accelerometer Calibrated")
        accel_calib = True
    
    if (magno == 3):
        print("Magnometer Calibrated")
        magno_calib = True

    
    if sys_calib and magno_calib and accel_calib and gyro_calib:
        print("BNO055 Calibrated!")
        calibration = bno.get_calibration()
        print(calibration)

        f = open('../calibrations/bno055.txt', 'w')
        f.writelines(calibration)
        f.close()
        False

    runonce = False
    time.sleep(2)
    os.system('cls')
    
print("Check the calibrations directory for the calibration, it should then be called upon startup of the BNO055")