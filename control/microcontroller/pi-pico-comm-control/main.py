from machine import Pin, PWM
import time

# Constants
FREQ = 50  # 50 Hz = 20ms period
NEUTRAL_US = 1500
PERIOD_US = 1000000 // FREQ  # = 20000us

# Calculate duty cycle for 1500us out of 20000us, scaled to 16-bit
duty_16bit = int((NEUTRAL_US / PERIOD_US) * 65535)

# Set up PWM
pwm = PWM(Pin(15))
pwm.freq(FREQ)
pwm.duty_ns(NEUTRAL_US * 1000)

print("Sending 1500us signal")
while True:
    time.sleep(1)
