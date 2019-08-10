import os
import sys
import glob
import subprocess
import gen_inputs

INPUT_SAMPLES_PER_RUN = 3
PROG_PER_TEST = {}

def getInputTypes(fullProgName):
    #f = fileName.split(".")[0]
    inputFile = fullProgName+".input"
    fd = open(inputFile, 'r')
    types = fd.readlines()[0][:-1].split(",")
    print("file: {} types: {}".format(inputFile, types))
    fd.close()
    return types

def generateInputs(fullProgName):
    types = getInputTypes(fullProgName)
    inGen = gen_inputs.InputGenerator()
    ret = ""
    for t in types:
        if t == "double":
            i = inGen.genInput()
            ret = ret + i + " "
        if t == "int":
            ret = ret + "5 "
    return ret
    
# This finds all the tests (.exe) files for a given program
# and stores them in a global dict
def getAllTests(fullProgName):
    global PROG_PER_TEST
    # This is a list of all the tests
    allTests = glob.glob(fullProgName+"*.exe")
    PROG_PER_TEST[fullProgName] = allTests

def runTests():
    global PROG_PER_TEST
    for k in PROG_PER_TEST.keys():
        fullProgName = k
        inputs = generateInputs(fullProgName)
        for t in PROG_PER_TEST[k]:
            try:
                cmd = t + " " + inputs
                print ("Running: " + cmd)
                out = subprocess.check_output(cmd, shell=True)     
                print("got: " + str(out))
            except subprocess.CalledProcessError as outexc:                                                                                                   
                print ("Error at runtime:", outexc.returncode, outexc.output)
    
def main():
    global PROG_PER_TEST
    
    # Dir to walk
    rootDir = sys.argv[1]
    
    # Walk on the directory tree
    for dirName, subdirList, fileList in os.walk(rootDir):
        for fname in fileList:
            if fname.endswith('.c'):
                fullPath = dirName+"/"+fname
                getAllTests(fullPath)
    runTests()

main()
