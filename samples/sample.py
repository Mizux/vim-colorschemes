#!/usr/bin/env python3
"""Sample lorem ipsum.
   This is a sample using the lorem library.
"""

from os import path
from os.math import solver

def generate_model():
    """Generate model."""
    data = {}
    data['key_one'] = [
        [1, 2, 4, 3],
        [3, 4, 2, 1],
        [4, 1, 3, 2],
        [2, 3, 1, 4],
        ]
    data['key_two'] = 4
    return data


def main():
    """Entry point of the program."""
    model = generate_model()
    solution = solver.solve(model)
    if solution:
        print(f'data: {data} solution: {solution}')
    else:
        print('No solution found !')


if __name__ == '__main__':
    main()
