import os
import sys
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '../varity')))
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '../varity/common')))

import varity
import cfg
import random
import shutil

def configure():
    cfg.MAX_EXPRESSION_SIZE = 5
    cfg.MAX_NESTING_LEVELS = 3
    cfg.MAX_LINES_IN_BLOCK = 3
    cfg.ARRAY_SIZE = 10
    cfg.MAX_SAME_LEVEL_BLOCKS = 2
    cfg.MATH_FUNC_ALLOWED = True
    cfg.NUM_GROUPS = 1
    cfg.TESTS_PER_GROUP = 10
    cfg.OPT_LEVELS = [("-O0", 1), ("-O0", 0), ("-O1", 0), ("-O2", 0), ("-O3", 0)]
    cfg.TESTS_DIR = "_tests"
    cfg.INPUT_SAMPLES_PER_RUN = 5
    cfg.REAL_TYPE = "double"

    # Set machine C compiler
    cc_path = findCCompiler()
    cfg.COMPILERS = [("cc", cc_path)]

def findCCompiler():
    cc_path = shutil.which('cc')
    assert cc_path != None
    #print('cc:', cc_path)
    return cc_path

def test_generate_programs():
    configure()
    varity.generateTests()

if __name__ == '__main__':
    test_generate_programs()

