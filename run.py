import os
import sys
import glob
import subprocess
import gen_inputs

INPUT_SAMPLES_PER_RUN = 20
PROG_PER_TEST = {}

# "test.c" ->   [
#               ("test-1.exe", "input", "result"),
#               ("test-2.exe", "input", "result")
#               ]
PROG_RESULTS = {}

def getInputTypes(fullProgName):
    #f = fileName.split(".")[0]
    inputFile = fullProgName+".input"
    fd = open(inputFile, 'r')
    types = fd.readlines()[0][:-1].split(",")
    #print("file: {} types: {}".format(inputFile, types))
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

def getTestName(fullProgName):
    p = fullProgName.split("-")[0]
    
    
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
        results = []
        for n in range(INPUT_SAMPLES_PER_RUN):
            inputs = generateInputs(fullProgName)
            for t in PROG_PER_TEST[k]:
                try:
                    cmd = t + " " + inputs
                    #print ("Running: " + cmd)
                    out = subprocess.check_output(cmd, shell=True) 
                    res = out.decode('ascii')[:-1]
                    #print("got: " + res)
                    results.append(t + " " + inputs + " " + res)
                except subprocess.CalledProcessError as outexc:                                                                                                   
                    print ("Error at runtime:", outexc.returncode, outexc.output)

        PROG_RESULTS[k] = results

def saveResults():
    global PROG_RESULTS
    print("{")
    for k in PROG_RESULTS.keys():
        lastTest = list(PROG_RESULTS.keys())[-1]
        # ----
        print('  "'+k+'": {')
        # First we save the content in a dictionary
        key_input = {}
        for r in PROG_RESULTS[k]:
            compiler = r.split()[0].split('-')[1]
            opt = r.split()[0].split('-')[2].split('.')[0]
            input = ",".join(r.split()[1:-1])
            output = r.split()[-1:][0]
            
            #print("SAVING: {} {} {} {}".format(input, compiler, opt, output))

            if input in key_input.keys():
                key_comp = key_input[input]
                if compiler in key_comp.keys():
                    key_input[input][compiler][opt] = output
                else:
                    key_input[input][compiler] = {opt: output}
            else:
                key_input[input] = {compiler: {opt: output} }

        # Second we print it
        for i in key_input.keys():
            lastInput = list(key_input.keys())[-1]
            # ----
            print('    "'+i+'": {')
            for c in key_input[i].keys():
                lastComp = list(key_input[i].keys())[-1]
                # ----
                print('      "'+c+'": {')
                for o in key_input[i][c].keys():
                    val = key_input[i][c][o]
                    lastOpt = list(key_input[i][c].keys())[-1]
                    line = '        "'+o+'": "' + val
                    if o != lastOpt:
                        print(line + '",')
                    else:
                        print(line + '"')
                # ----
                if c != lastComp: print('      },')
                else: print('      }')
            # -----
            if i != lastInput: print('    },')
            else: print('    }')
        # ----
        if k != lastTest: print('  },')
        else: print('  }')
    print("}")
    
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
    saveResults()

main()
