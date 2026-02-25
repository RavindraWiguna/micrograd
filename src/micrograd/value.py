"""Core scalar value used in this micrograd library."""


class Value:
    """Represent a scalar node in computational graph

    Args:
        data: the scalar value represented by this Value object
    """

    def __init__(self, data: float):
        self.data = data
