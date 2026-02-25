from micrograd import Value


def test_value_initialization():
    v = Value(67)
    assert v.data == 67
