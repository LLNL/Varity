import os
import sys
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '../varity')))
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '../varity/common')))

import id_generator
import cfg
import random

def test_generate_real():
    ig = id_generator.IdGenerator.get()
    ig.clear()
    variables = set([])
    for i in range(3):
        variables.add( ig.generateRealID())
    #print(variables)
    assert len(variables) == 3
    assert len(ig.printAllVars()) == 3
    ig.clear()
    assert len(ig.printAllVars()) == 0

if __name__ == '__main__':
    test_generate_real()

