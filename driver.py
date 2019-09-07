import gen_program
import cfg
import run
import os
import subprocess
import sys
import socket
import type_checking
import multiprocessing as mp
import argparse

def writeProgramCode(fileName):
    # Write C code
    p = gen_program.Program()
    (code, allTypes) = p.printCode()
    writeInputFile(fileName, allTypes)
    f = open(fileName, "w")
    f.write(code)
    f.close()

    # Write CUDA code
    (code, allTypes) = p.printCode(True)
    f = open(fileName+"u", "w")
    f.write(code)
    f.close()

def writeInputFile(fileName, allTypes):
    f = open(fileName+".input", "w")
    f.write(type_checking.getTypeString()+",")
    f.write(allTypes+"\n")
    f.close()

def isCUDACompiler(compiler_name):
    return "nvcc" in compiler_name

def compileCode(config):
    (compiler_name, compiler_path, op_level, dirName, fileName) = config
    try:
        pwd = os.getcwd()
        os.chdir(dirName)
        libs = " -lm "
        if isCUDACompiler(compiler_name):
            options = ""
            #if op_level == "-O0":
            #    options = " --fmad=false "
            cmd = compiler_path + options + " -arch=sm_60 " + op_level + libs + " -o " + fileName + "-" + compiler_name + op_level + ".exe " + fileName+"u"
        else:
            options = ""
            #if "xlc" in compiler_name and op_level == "-O0":
            #    options = " -qfloat=nomaf "
            #if "gcc" in compiler_name and op_level == "-O0":
            #    options = " -fma "
            #if "clang" in compiler_name and op_level == "-O0":
            #    options = " -ffp-contract=fast "
            if "pgcc" in compiler_name:
                c99 = " -c99 "
            else:
                c99 = " -std=c99 "
            cmd = compiler_path + options + c99 + op_level + libs + " -o " + fileName + "-" + compiler_name + op_level + ".exe " + fileName

        out = subprocess.check_output(cmd, shell=True)
        os.chdir(pwd)
    except subprocess.CalledProcessError as outexc:                                                                                                   
        print("Error at compile time:", outexc.returncode, outexc.output)
        print("FAILED: ", cmd)

def generateTests():
    dir = getTargetDirectory()
    print("Generating {} groups, {} tests... ".format(cfg.NUM_GROUPS, cfg.TESTS_PER_GROUP))
    fileNameList = []
    for g in range(cfg.NUM_GROUPS):
        # Create directory
        p = dir + "/" + cfg.TESTS_DIR + "/_group_" + str(g+1)
        try:
            os.makedirs(p)
        except FileExistsError:
            pass # directory already exists
        
        # Write the program source code
        for t in range(cfg.TESTS_PER_GROUP): 
            fileName = p + "/_test_" + str(t+1) + ".c"
            fileNameList.append(fileName)

    cpuCount = mp.cpu_count()
    for i in range(0, len(fileNameList), cpuCount):
        workLoad = fileNameList[i:i+cpuCount]
        with mp.Pool(cpuCount) as myPool:
            myPool.map(writeProgramCode, workLoad)
            #writeProgramCode(fileName)
    print("done!")
    return dir

def compileTests(path):
    print("Compiling tests...")
    print("Total tests to compile: ", cfg.NUM_GROUPS*cfg.TESTS_PER_GROUP)

    compileConfigList = []
    for g in range(cfg.NUM_GROUPS):
        p = path + "/" + cfg.TESTS_DIR + "/_group_" + str(g+1)
        for t in range(cfg.TESTS_PER_GROUP):
            fileName = "_test_" + str(t+1) + ".c"
            for c in cfg.COMPILERS:
                compiler_name = c[0]
                compiler_path = c[1]
                for op in cfg.OPT_LEVELS:
                    config = (compiler_name, compiler_path, op, p, fileName)
                    compileConfigList.append(config)

    cpuCount = mp.cpu_count()
    for i in range(0, len(compileConfigList), cpuCount):
        print("\r--> Compiling test: {}".format(int(i/cpuCount)+1), end='')
        sys.stdout.flush()
        workLoad = compileConfigList[i:i+cpuCount]
        with mp.Pool(cpuCount) as myPool:
            myPool.map(compileCode, workLoad)

    print("")

def getTargetDirectory():
    p = socket.gethostname()+"_"+str(os.getpid())
    print("Creating dir:", p)
    try:
        os.mkdir(p)
    except OSError:
        print ("Creation of the directory %s failed" % p)
        exit()
    return p

def runTests(dir):
    #p = getTargetDirectory()
    #cfg.TESTS_DIR = p + "/" + cfg.TESTS_DIR
    #p = dir
    run.run(dir)

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("-g", "--generate", help="generate programs",action="store_true")
    parser.add_argument("-c", "--compile", type=str, help="compile programs in dir: COMPILE")
    parser.add_argument("-r", "--run", type=str, help="run programs in dir: RUN")
    args = parser.parse_args()
    
    if len(sys.argv) == 1:
        dir = generateTests()
        compileTests(dir)
        runTests(dir)
    else:
        if args.generate:
            generateTests()
        if args.compile:
            compileTests(args.compile)
        if args.run:
            runTests(args.run)

if __name__ == '__main__':
    main()
