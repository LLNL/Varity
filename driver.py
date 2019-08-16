import gen_program
import os
import subprocess
import sys

NUM_GROUPS = 3
TESTS_PER_GROUP = 10
#COMPILERS = [("clang_80", "/usr/tce/packages/clang/clang-upstream-2019.03.26/bin/clang"), ("gcc_493", "/usr/tce/packages/gcc/gcc-4.9.3/bin/gcc"), ("xlc", "/usr/tce/packages/xl/xl-2019.02.07/bin/xlc"), ("nvcc_92", "/usr/tce/packages/cuda/cuda-9.2.148/bin/nvcc")]
COMPILERS = [("clang_7", "/Users/lagunaperalt1/projects/GPU_work/latest_llvm/llvm-7.0/install/bin/clang"), ("gcc_7", "/opt/local/bin/gcc-mp-7")]
#OPT_LEVELS = ["-O0", "-O1", "-O2", "-O3"]
OPT_LEVELS = ["-O0", "-O1"]
TESTS_DIR = "_tests"

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
    f.write("double,")
    f.write(allTypes+"\n")
    f.close()

def isCUDACompiler(compiler_name):
    return "nvcc" in compiler_name

def compileCode(compiler_name, compiler_path, op_level, dirName, fileName):
    try:
        os.chdir(dirName)

        if isCUDACompiler(compiler_name):
            cmd = compiler_path + " -arch=sm_60 " + op_level + " -o " + fileName + "-" + compiler_name + op_level + ".exe " + fileName+"u"
        else:
            cmd = compiler_path + " -std=c99 " + op_level + " -o " + fileName + "-" + compiler_name + op_level + ".exe " + fileName

        out = subprocess.check_output(cmd, shell=True)                    
    except subprocess.CalledProcessError as outexc:                                                                                                   
        print("Error at compile time:", outexc.returncode, outexc.output)
        print("FAILED: ", cmd)

def generateTests():
    global NUM_GROUPS, TESTS_PER_GROUP, COMPILERS, TESTS_DIR
    
    for g in range(NUM_GROUPS):
        
        # Create directory
        p = TESTS_DIR + "/_group_" + str(g+1)
        try:
            os.makedirs(p)
        except FileExistsError:
            # directory already exists
            pass
        
        # Write code
        for t in range(TESTS_PER_GROUP): 
            fileName = p + "/_test_" + str(t+1) + ".c"
            writeProgramCode(fileName)

def compileTests():
    global NUM_GROUPS, TESTS_PER_GROUP, COMPILERS, TESTS_DIR
    
    print("Total tests to compile: ", NUM_GROUPS*TESTS_PER_GROUP)
    count = 1

    THIS_DIR = os.path.dirname(os.path.abspath(__file__))
    for g in range(NUM_GROUPS):
        p = THIS_DIR + "/" + TESTS_DIR + "/_group_" + str(g+1)
        for t in range(TESTS_PER_GROUP):
            # --- print progress ---
            print("\r--> Compiling test: {}".format(count), end='')
            sys.stdout.flush()
            count = count + 1
            # ---------------------- 
            fileName = "_test_" + str(t+1) + ".c"
            for c in COMPILERS:
                compiler_name = c[0]
                compiler_path = c[1]
                for op in OPT_LEVELS:
                    compileCode(compiler_name, compiler_path, op, p, fileName)
    print("")

def main():
    global NUM_GROUPS, TESTS_PER_GROUP
    
    print("Generating {} groups, {} tests... ".format(NUM_GROUPS, TESTS_PER_GROUP))
    generateTests()
    print("done!")
    
    print("Compiling tests...")
    compileTests()

main()
