import os
import sys
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '../varity')))
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '../varity/common')))

import varity
import cfg
import random
import shutil
import socket
import json

def configure():
    cfg.MAX_EXPRESSION_SIZE = 5
    cfg.MAX_NESTING_LEVELS = 3
    cfg.MAX_LINES_IN_BLOCK = 3
    cfg.ARRAY_SIZE = 10
    cfg.MAX_SAME_LEVEL_BLOCKS = 2
    cfg.MATH_FUNC_ALLOWED = True
    cfg.NUM_GROUPS = 1
    cfg.TESTS_PER_GROUP = 5
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

def test_driver():
    configure()
    varity.generateTests()
    print('dir:', varity.dirName())
    # Directory is generated
    assert os.path.exists("./"+varity.dirName())

    # Check C files are generated
    c_files = 0
    for dirpath, dirnames, filenames in os.walk("."):
        for filename in [f for f in filenames if f.endswith(".c")]:
            c_files = c_files + 1
    assert c_files == cfg.TESTS_PER_GROUP*cfg.NUM_GROUPS

    # Check C files are compiled
    varity.compileTests("./"+varity.dirName())
    compiled_files = 0
    for dirpath, dirnames, filenames in os.walk("."):
        for filename in [f for f in filenames if f.endswith(".exe")]:
            compiled_files = compiled_files + 1
    assert compiled_files > cfg.TESTS_PER_GROUP*cfg.NUM_GROUPS

    # Check executables can be run
    cwd = os.getcwd()
    varity.runTests("./"+varity.dirName())
    resultsFile = cwd + "/" + varity.dirName() + "/results.json"
    with open(resultsFile) as json_file:
        data = json.load(json_file)
    testName = list(data.keys())[0]
    assert testName.endswith(".c")

    # Remove dir
    shutil.rmtree(cwd + "/" + varity.dirName())
    assert not os.path.exists("./"+varity.dirName())

if __name__ == '__main__':
    test_driver()

