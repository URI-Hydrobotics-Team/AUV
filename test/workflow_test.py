"""
blah blah blah I'm a module docstring.
"""

class AClass:
    """
    A simple class to demonstrate arithmetic operations for testing linting tools.
    """

    def __init__(self, value):
        """
        Initialize the TestClass with a specific value.
        
        Parameters:
            value (int or float): The initial value to store in the instance.
        """
        #Stupid requirement because it's stupid and a requirement if the word Test is at the start of your class.
        self.value = value

    def increment_value(self):
        """
        Increment the stored value by 1.

        Returns:
            int or float: The stored value incremented by 1.
        """
        return self.value + 1

    def multiply_value(self, multiplier):
        """
        Multiply the stored value by a given multiplier.

        Parameters:
            multiplier (int or float): The number to multiply with the stored value.

        Returns:
            int or float: The product of the stored value and the multiplier.
        """
        if multiplier == 0:
            return 0
        return self.value * multiplier

    def divide_value(self, divisor):
        """
        Divide the stored value by a given divisor.

        Parameters:
            divisor (int or float): The number to divide the stored value by.

        Returns:
            float: The quotient of the stored value divided by the divisor.

        Raises:
            ValueError: If the divisor is zero.
        """
        if divisor == 0:
            raise ValueError("Cannot divide by zero")
        return self.value / divisor


# Example instantiation and usage
if __name__ == "__main__":
    test_instance = AClass(5)
    print(test_instance.increment_value())
    print(test_instance.multiply_value(2))
    print(test_instance.divide_value(1))
