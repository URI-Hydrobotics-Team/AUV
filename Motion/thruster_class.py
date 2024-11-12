"""Thruster class to control thruster value.

This program defined the thruster class to control thruster of the robot.
It contains neccessary constants of correct pwm values.
It has functions such as initialize, stop and update for thruster pwm values.

Typical usage example:

  thruster = Thruster()
  thruster.initialize_thruster()
"""

class Thruster:
    """Represent a thruster with pwm values and functions related to its operation.
    
    Attributes:
        pwm: An integer representing the pwm value of the thruster.
        name: A string indicating the thruster's name.
        initialized: A boolean indicating if the thruster have been initialized.
    """

    def __init__(self, name, min_pwm, stop_pwm, max_pwm):
        """Initialize the class instance based on the name.

        Args:
          name: Defines the name of the instance.
        """
        self._STOP_PWM = stop_pwm
        self._MIN_PWM = min_pwm
        self._MAX_PWM = max_pwm
        self.pwm = self._STOP_PWM
        self.name = name
        self.inititlaized = False

    def initialize_thruster(self):
        """Initialize the thruster."""

        self.update(self._STOP_PWM)
        self.inititlaized = True

    def update(self, pwm):
        """Update the thruster based on the new pwm value.
        
        Args:
          pwm: Defines the new pwm value for the thruster.
        """

        # Make sure thruster is initialized before updating new pwm value.
        if pwm != self._STOP_PWM and self.inititlaized is False:
            print(f'{self.name} received pwm: {pwm} before receiving intialization pwm')
        else:
            self.pwm = pwm
            self.inititlaized = True

    def stop_thruster(self):
        """Stop the thruster"""

        self.update(self._STOP_PWM)

    def get_max(self):
        """Get the max pwm value"""

        return self._MAX_PWM

    def get_min(self):
        """Get the minimum pwm value"""

        return self._MIN_PWM

    def get_pwm(self):
        """Get the current pwm value"""

        return self.pwm

    def is_initialized(self):
        """Check if thruster is initialized"""

        return self.inititlaized
