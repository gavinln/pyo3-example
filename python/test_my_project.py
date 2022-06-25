import math
import my_project


def py_is_prime(num: int) -> bool:
    if num == 0 or num == 1:
        return False
    num_sqrt = int(math.sqrt(num))
    for val in range(2, num_sqrt):
        if num % val == 0:
            return False
    return True


def test_is_prime_true():
    assert my_project.is_prime(3)


def test_is_prime_false():
    assert my_project.is_prime(12) is False
