class TestClass:
    def __init__(self, value):
        self.value = value

    def increment_value(self):
        return self.value + 1

    def multiply_value(self, multiplier):
        if multiplier == 0:
            return 0
        return self.value * multiplier

    def divide_value(self, divisor):
        if divisor == 0:
            raise ValueError("Cannot divide by zero")
        return self.value / divisor


# Example instantiation and usage
if __name__ == "__main__":
    test_instance = TestClass(5)
    print(test_instance.increment_value())
    print(test_instance.multiply_value(2))
    print(test_instance.divide_value(1))
