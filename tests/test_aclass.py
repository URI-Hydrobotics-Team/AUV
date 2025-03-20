import pytest
from aclass import AClass

def test_increment_value():
    instance = AClass(5)
    assert instance.increment_value() == 6

def test_multiply_value():
    instance = AClass(5)
    assert instance.multiply_value(2) == 10
    assert instance.multiply_value(0) == 0

def test_divide_value():
    instance = AClass(10)
    assert instance.divide_value(2) == 5
    with pytest.raises(ValueError):
        instance.divide_value(0)

def test_initial_value():
    instance = AClass(7)
    assert instance.value == 7
