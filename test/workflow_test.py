class TestClass:
    def __init__(self, value):
        self.value = value

    def increment_value(self):
        # This will trigger an unused variable warning in pylint
        unused_var = 10  
        return self.value + 1

    def multiply_value(self, multiplier):
        if multiplier == 0:  # Avoiding division by zero
            return 0
        else:
            return self.value * multiplier

    # Method with an indentation error for testing
    def divide_value(self, divisor):
     if divisor == 0:
         raise ValueError("Cannot divide by zero")
     return self.value / divisor

# Example instantiation
test_instance = TestClass(5)
print(test_instance.increment_value())
