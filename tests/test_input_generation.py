import os
import sys
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '../varity')))
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '../varity/common')))

from gen_inputs import InputGenerator, FPNumberType
import cfg
import random

def check_type(t):
    assert t == FPNumberType.normal or t == FPNumberType.subnormal or t == FPNumberType.almost_overflow or  t == FPNumberType.almost_underflow or t == FPNumberType.zero

def float_input():
    cfg.REAL_TYPE = "float"
    n = InputGenerator.genInput()
    #print(n)
    assert n.endswith('f')
    
    t = InputGenerator.getRealType(n)
    #print(t)
    check_type(t)

def double_input():
    cfg.REAL_TYPE = "double"
    n = InputGenerator.genInput()
    #print(n)
    assert not n.endswith('f')
    
    t = InputGenerator.getRealType(n)
    #print(t)
    check_type(t)

def test_inputs():
    for s in range(10):
        random.seed(s)
        float_input()
        double_input()

if __name__ == '__main__':
    test_inputs()

