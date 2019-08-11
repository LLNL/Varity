import gen_program
import os
import subprocess

NUM_GROUPS = 5
TESTS_PER_GROUP = 20
COMPILERS = [("clang_70", "/Users/lagunaperalt1/projects/GPU_work/latest_llvm/llvm-7.0/install/bin/clang"), ("gcc_7", "/opt/local/bin/gcc-mp-7")]
OPT_LEVELS = ["-O0", "-O1", "-O2", "-O3"]
TESTS_DIR = "_tests"

def writeProgramCode(fileName):    
    (code, allTypes) = gen_program.Program().printCode()
    writeInputFile(fileName, allTypes)
    f = open(fileName, "w")
    f.write(code)
    f.close()

def writeInputFile(fileName, allTypes):
    f = open(fileName+".input", "w")
    f.write("double,")
    f.write(allTypes+"\n")
    f.close()

def compileCode(compiler_name, compiler_path, op_level, dirName, fileName):
    try:
        os.chdir(dirName)
        cmd = compiler_path + " " + op_level + " -o " + fileName + "-" + compiler_name + op_level + ".exe " + fileName
        out = subprocess.check_output(cmd, shell=True)                    
    except subprocess.CalledProcessError as outexc:                                                                                                   
        print ("Error at compile time:", outexc.returncode, outexc.output)

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
    
    THIS_DIR = os.path.dirname(os.path.abspath(__file__))
    for g in range(NUM_GROUPS):
        p = THIS_DIR + "/" + TESTS_DIR + "/_group_" + str(g+1)
        for t in range(TESTS_PER_GROUP): 
            fileName = "_test_" + str(t+1) + ".c"
            for c in COMPILERS:
                compiler_name = c[0]
                compiler_path = c[1]
                for op in OPT_LEVELS:
                    compileCode(compiler_name, compiler_path, op, p, fileName)

def main():
    global NUM_GROUPS, TESTS_PER_GROUP
    
    print("Generating {} groups, {} tests... ".format(NUM_GROUPS, TESTS_PER_GROUP))
    generateTests()
    print("done!")
    
    print("Compiling tests...")
    compileTests()

main()
