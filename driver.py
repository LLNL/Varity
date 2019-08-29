import gen_program
import cfg
import run
import os
import subprocess
import sys
import socket

def writeProgramCode(fileName):
    # Write C code
    p = gen_program.Program()
    #p = Program()
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
            options = ""
            #if op_level == "-O0":
            #    options = " --fmad=false "
            cmd = compiler_path + options + " -arch=sm_60 " + op_level + " -o " + fileName + "-" + compiler_name + op_level + ".exe " + fileName+"u"
        else:
            options = ""
            #if "xlc" in compiler_name and op_level == "-O0":
            #    options = " -qfloat=nomaf "
            #if "gcc" in compiler_name and op_level == "-O0":
            #    options = " -fma "
            if "clang" in compiler_name and op_level == "-O0":
                options = " -ffp-contract=fast "
            cmd = compiler_path + options + " -std=c99 " + op_level + " -o " + fileName + "-" + compiler_name + op_level + ".exe " + fileName

        out = subprocess.check_output(cmd, shell=True)                    
    except subprocess.CalledProcessError as outexc:                                                                                                   
        print("Error at compile time:", outexc.returncode, outexc.output)
        print("FAILED: ", cmd)

def generateTests():    
    for g in range(cfg.NUM_GROUPS):
        
        # Create directory
        p = cfg.TESTS_DIR + "/_group_" + str(g+1)
        try:
            os.makedirs(p)
        except FileExistsError:
            # directory already exists
            pass
        
        # Write code
        for t in range(cfg.TESTS_PER_GROUP): 
            fileName = p + "/_test_" + str(t+1) + ".c"
            writeProgramCode(fileName)

def compileTests():
    
    print("Total tests to compile: ", cfg.NUM_GROUPS*cfg.TESTS_PER_GROUP)
    count = 1

    THIS_DIR = os.path.dirname(os.path.abspath(__file__))
    for g in range(cfg.NUM_GROUPS):
        p = THIS_DIR + "/" + cfg.TESTS_DIR + "/_group_" + str(g+1)
        for t in range(cfg.TESTS_PER_GROUP):
            # --- print progress ---
            print("\r--> Compiling test: {}".format(count), end='')
            sys.stdout.flush()
            count = count + 1
            # ---------------------- 
            fileName = "_test_" + str(t+1) + ".c"
            for c in cfg.COMPILERS:
                compiler_name = c[0]
                compiler_path = c[1]
                for op in cfg.OPT_LEVELS:
                    compileCode(compiler_name, compiler_path, op, p, fileName)
    print("")
    os.chdir(THIS_DIR)

def main():
    p = socket.gethostname()+"_"+str(os.getpid())
    try:
        os.mkdir(p)
    except OSError:
        print ("Creation of the directory %s failed" % p)


    cfg.TESTS_DIR = p + "/" + cfg.TESTS_DIR
    print("Generating {} groups, {} tests... ".format(cfg.NUM_GROUPS, cfg.TESTS_PER_GROUP))
    generateTests()
    print("done!")
    
    print("Compiling tests...")
    compileTests()

    # run tests
    run.run(p)

main()
