import os
import sys
import glob
import subprocess
import gen_inputs
import cfg
import socket
from type_checking import isTypeReal, isTypeRealPointer
import multiprocessing as mp

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
    #inGen = gen_inputs.InputGenerator()
    ret = ""
    for t in types:
        if isTypeReal(t) or isTypeRealPointer(t):
            i = gen_inputs.InputGenerator.genInput()
            ret = ret + i + " "
        elif t == "int":
            ret = ret + str(cfg.NUM_ITERATIONS) + " "
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

'''
def spawnProc(config):
    (cmd, results, lock) = config
    try:
        out = subprocess.check_output(cmd, shell=True)
        res = out.decode('ascii')[:-1]
        lock.acquire()
        results.append(cmd + " " + res)
        lock.release()
    except subprocess.CalledProcessError as outexc:
        print("\nError at runtime:", outexc.returncode, outexc.output)
        print("CMD", cmd)
        exit()

def runTests():
    global PROG_PER_TEST, PROG_RESULTS
    print("Total programs: ", len(PROG_PER_TEST.keys()))
    manager = mp.Manager()
    lock = manager.Lock()
    #cpuCount = mp.cpu_count()
    cpuCount = 16
    c = 1
    
    for k in PROG_PER_TEST.keys():
        fullProgName = k
        results = manager.list()
        inputsList = []
        for n in range(cfg.INPUT_SAMPLES_PER_RUN):
            inputs = generateInputs(fullProgName)
            for t in PROG_PER_TEST[k]:
                cmd = t + " " + inputs
                config = (cmd, results, lock)
                inputsList.append(config)
    
        for i in range(0, len(inputsList), cpuCount):
            print("\r--> Running program: {}".format(c), end='')
            sys.stdout.flush()
            workLoad = inputsList[i:i+cpuCount]
            with mp.Pool(cpuCount) as myPool:
                myPool.map(spawnProc, workLoad)

        PROG_RESULTS[k] = results
        c = c + 1
    print("")
'''

def runTestsSerial():
    global PROG_PER_TEST, PROG_RESULTS
    print("Total programs: ", len(PROG_PER_TEST.keys()))
    count = 1
    for k in PROG_PER_TEST.keys():
        # --- print progress ---
        print("\r--> On program: {}".format(count), end='')
        sys.stdout.flush()
        count = count + 1
        # ----------------------
        
        fullProgName = k
        results = []
        for n in range(cfg.INPUT_SAMPLES_PER_RUN):
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
                    print("\nError at runtime:", outexc.returncode, outexc.output)
                    print("CMD", cmd)
                    exit()
    
        PROG_RESULTS[k] = results
    print("")

def saveResults(rootDir):
    global PROG_RESULTS
 
    os.chdir(rootDir)   
    f = open("./results.json", "w")
#    f = open(rootDir+"-results.json", "w")
    print("{", file=f)
    for k in PROG_RESULTS.keys():
        lastTest = list(PROG_RESULTS.keys())[-1]
        # ----
        print('  "'+k+'": {', file=f)
        # First we save the content in a dictionary
        key_input = {}
        for r in PROG_RESULTS[k]:
            compiler = r.split()[0].split('-')[1]
            opt = r.split()[0].split('-')[2].split('.')[0]
            # Check if timers were used
            timerUsed = False
            if 'time:' in r.split()[-1:][0]:
                timerUsed = True
                
            if timerUsed:
                input = ",".join(r.split()[1:-2])
                output = " ".join(r.split()[-2:])
                #time = r.split()[-1:][0]
            else:
                input = ",".join(r.split()[1:-1])
                output = r.split()[-1:][0]

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
            print('    "'+i+'": {', file=f)
            for c in key_input[i].keys():
                lastComp = list(key_input[i].keys())[-1]
                # ----
                print('      "'+c+'": {', file=f)
                for o in key_input[i][c].keys():
                    val = key_input[i][c][o]
                    lastOpt = list(key_input[i][c].keys())[-1]
                    line = '        "'+o+'": "' + val
                    if o != lastOpt:
                        print(line + '",', file=f)
                    else:
                        print(line + '"', file=f)
                # ----
                if c != lastComp: print('      },', file=f)
                else: print('      }', file=f)
            # -----
            if i != lastInput: print('    },', file=f)
            else: print('    }', file=f)
        # ----
        if k != lastTest: print('  },', file=f)
        else: print('  }', file=f)
    print("}", file=f)
    f.close()
    
def run(dir):
    global PROG_PER_TEST
    
    # Walk on the directory tree
    for dirName, subdirList, fileList in os.walk(dir):
        for fname in fileList:
            if fname.endswith('.cpp'):
                fullPath = dirName+"/"+fname
                getAllTests(fullPath)
    #runTests()
    runTestsSerial()
    print("Saving runs results...")
    saveResults(dir)
    print("done")

if __name__ == "__main__":
    d = sys.argv[1]
    run(d)
