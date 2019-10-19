import os
import sys
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '../varity')))
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '../varity/common')))

import gen_math_exp
import cfg
import random

tests = 25

def getMathFunctions():
    functions = set([])
    for f in gen_math_exp.MathFunctions:
        functions.add( f.split('(')[0] )
    return functions

def test_fp64_math_expressions():
    cfg.REAL_TYPE = "double"
    funcs = getMathFunctions()
    
    matched = 0
    for i in range(tests):
        random.seed(i)
        m = gen_math_exp.MathExpression().printCode()
        f = m.split('(')[0]
        if f in funcs:
            matched = matched + 1
    assert matched == tests

def test_fp32_math_expressions():
    cfg.REAL_TYPE = "float"
    funcs = getMathFunctions()
    
    matched = 0
    for i in range(tests):
        random.seed(i)
        m = gen_math_exp.MathExpression().printCode()
        f = m.split('(')[0]
        f = f[:-1] # remove f
        if f in funcs:
            matched = matched + 1
    assert matched == tests

if __name__ == '__main__':
    test_fp64_math_expressions()
    test_fp32_math_expressions()

