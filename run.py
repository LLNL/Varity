import os
import sys
import subprocess
import gen_inputs

def getInputTypes(fileName, path):
    f = fileName.split(".")[0]
    inputFile = path+"/"+f+".c.input"
    fd = open(inputFile, 'r')
    types = fd.readlines()[0][:-1].split(",")
    print("file: {} types: {}".format(inputFile, types))
    fd.close()
    return types

def generateInputs(fileName, path):
    types = getInputTypes(fileName, path)
    inGen = gen_inputs.InputGenerator()
    ret = ""
    for t in types:
        if t == "double":
            i = inGen.genInput()
            ret = ret + i + " "
        if t == "int":
            ret = ret + "5 "
    return ret
    
def main():
    rootDir = sys.argv[1]
    for dirName, subdirList, fileList in os.walk(rootDir):
        #print('Found directory: %s' % dirName)
        for fname in fileList:
            if "." in fname:
                if fname.endswith('.exe'):
                    fullPath = dirName+"/"+fname
                    print(fullPath)
                    inputs = generateInputs(fname, dirName)
                    print("inputs: " + inputs)
                    try:
                        cmd = fullPath + " " + inputs
                        print ("Running: " + cmd)
                        out = subprocess.check_output(cmd, shell=True)     
                        print("got: " + str(out))
                    except subprocess.CalledProcessError as outexc:                                                                                                   
                        print ("Error at runtime:", outexc.returncode, outexc.output)

main()
