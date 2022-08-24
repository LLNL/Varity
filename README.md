 # Varity
 
 **Varity** is a framework to identify variations in floating-point programs through randomized differential testing. Varity generates random tests that include floating-point operations and compile these tests with different compilers in a system. It also generates random floating-point inputs for the tests. When tests are executed, the results are compared to identify variations in the results. Varity helps users of a system to identify the compilers that produce the most similar results in the system.
 
 ## Sample Tests
 
 A random floating-point test in Varity looks like the following code:

 ```c
void compute(double comp, double var_1, double var_2, double var_3, int var_4,
             double var_5, double var_6, double var_7, double var_8,
             double var_9, double var_10, double var_11) {
  if (comp <= -1.8713E305 + cos(-1.8213E-314 + -1.2746E306 * (var_1 * +0.0))) {
    if (comp < var_2 + (+1.9467E212 - -1.5888E-306 - (var_3 / +1.4018E-312))) {
      comp += atan((+1.4283E-306 * log10((+1.0403E-318 / var_5))));
      comp += +1.1409E305 / var_6 *
              (var_7 + sinh((var_8 + +1.8913E306 / (var_9 / -1.0257E-211))));
      for (int i = 0; i < var_4; ++i) {
        comp += (var_10 - var_11 * asin(-1.7743E-310));
        comp += (-1.7207E-199 / (-1.8883E-306 + -1.6191E-318));
      }
    }
  }
  printf("%.17g\n", comp);
}
```
 
 A `compute` function is generated, which takes as arguments floating-point or integer variables. The function body
 can contain arithmetic expressions, for loops, conditions, math function calls, and the use of temporal variables.
 The function computes a `comp` variables and the value stored in this variable is printed at the end of the test function.
 
 # Getting Started
 
 ## Requirements
 You will need C compilers, such as clang or gcc, or any other C compiler that you want to test in the system. Other compilers we have tested successfully are PGI, NVIDIA nvcc, and the Intel compiler. You will also need Python 3. There are no other dependencies.
 
 ## Using Varity
 
 The main Python script is `varity.py` and is located in the `./varity` directory. For now, the main script should be executed from that directory.
 
 ### Configuration
 
 The main configuration file is `cfg.py`; note that this is a Python file. The following are some of the most important configuration options:
 - `COMPILERS = [(name_1, path_1), (name_2, path_2), ...]`: This is the most important option. It specifies the compiler names (name_1, name_2, ...) to test and their paths in the system (path_1, path_2, ...). Names can use underscore ('_'), but not dashes ('-'). Paths should be absolute paths.
 - `NUM_GROUPS`: Random tests are grouped in different directories. This defines the number of groups (or directories). This helps avoiding creating many files in a single directory; if many files per directory is not a problem you can use 1.
 - `TESTS_PER_GROUP`: Number of tests per group. The total number of generated tests is `NUM_GROUPS*TESTS_PER_GROUP`. 
 - `INPUT_SAMPLES_PER_RUN`: Number of random inputs per test.
 - `REAL_TYPE`: It defines the type for floating-point variables ("float" or "double").
 
 ### Running 
 
 After configuring you can simply move to the `varity/` directory and run `python3 varity.py` there. This will execute three steps: (1) it will generate the random tests; (2) it will compile the tests (producing executables); (3) it will run the executables with random inputs. If you do this, you should expect to see an output like this:
 
 ```sh
 $ python3 varity.py 
 Creating dir: mylaptop_22359
 Generating 5 groups, 3 tests... 
 done!
 Compiling tests...
 Total tests to compile:  15
 --> Compiling test: 38
 Total programs:  15
 --> On program: 15
 Saving runs results...
 done
 ```
 In this case, Varity created a directory named `mylaptop_22359` to store the results. The name of the directory is created by joining the hostname, "_", and the process ID of the run. Inside this directory, you will find a file named `results.json` with the results.
 
 Alternatively, instead of executing the previous three steps inmediately (i.e., test generation, copmilation, and execution), you can perform these steps separataley using the -g, -c, and -r options; you can see the script options by running `python3 varity.py -h`:
 
 ```sh
 $ python3 varity.py -h
 usage: varity.py [-h] [-g] [-c COMPILE] [-r RUN]
 
 optional arguments:
 -h, --help            show this help message and exit
 -g, --generate        generate programs
 -c COMPILE, --compile COMPILE
 compile programs in dir: COMPILE
 -r RUN, --run RUN     run programs in dir: RUN
 ```
 
 ### Results File
 
 The results stored in the `results.json` look like this. The first level key (`"mylaptop_22359/_tests/_group_1/_test_3.c"`) is the C file with the random test. The second level key is the input used to execte the test (values are separated by comma). The third level key (`"clang_7"`) is the compiler name. The fourth level keys are the optimization levels used to compile tests; thei values are the floating-point results of the tests.
 
 ```jason
 {
   "mylaptop_22359/_tests/_group_1/_test_3.c": {
     "+0.0f,5,5,-1.5590E-43f,+1.0612E-36f,-1.7409E-29f,-0.0f,-1.5503E-17f,+1.7650E-36f": {
       "clang_7": {
         "O2": "-1476099968",
         "O3": "-1476099968",
         "O1": "-1476099968",
         "O0": "-1476099968",
         "O0_nofma": "-1476099968"
       },
       "gcc_7": {
         "O0_nofma": "-1476099968",
         "O2": "-1476099968",
         "O3": "-1476099968",
         "O1": "-1476099968",
         "O0": "-1476099968"
       }
     },
     "-1.1759E34f,5,5,+1.8350E-27f,+0.0f,+1.9366E-22f,-1.9813E36f,-1.2900E36f,-1.2697E36f": {
       "clang_7": {
         "O2": "1.0564000196230705e+22",
         "O3": "1.0564000196230705e+22",
         "O1": "1.0564000196230705e+22",
         "O0": "1.0564000196230705e+22",
         "O0_nofma": "1.0564000196230705e+22"
       },
       "gcc_7": {
         "O0_nofma": "1.0564000196230705e+22",
         "O2": "1.0564000196230705e+22",
         "O3": "1.0564000196230705e+22",
         "O1": "1.0564000196230705e+22",
         "O0": "1.0564000196230705e+22"
       }
     },
...
 ```
 

 ### Contact
 For questions, contact Ignacio Laguna <ilaguna@llnl.gov>.
 
 ## Cite
 To cite this work, please use:
 ```
 Laguna, Ignacio. "Varity: Quantifying Floating-point Variations in HPC Systems 
 Through Randomized Testing." In 2020 IEEE International Parallel and Distributed 
 Processing Symposium (IPDPS), pp. 622-633. IEEE, 2020.
 ```
 
 ## License

Varity is distributed under the terms of the MIT license. All new contributions must be made under the MIT license.
 
 See LICENSE and NOTICE for details.
 
 LLNL-CODE-798680

