import os
import sys
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '../varity')))
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '../varity/common')))

from gen_program import Expression
import cfg
import random

tests = 10

def test_operands():
    random.seed(1)
    for i in range(tests):
        e = Expression()
        str = e.printCode()
        terms = str.split()
        operands = 0
        #print(str, terms)
        for t in terms:
            if t in ['+', '-', '*', '/', '+=']:
                operands = operands + 1
        #print('ops:', operands)
        assert operands > 0

if __name__ == '__main__':
    test_operands()

