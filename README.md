 # Varity
 
 **Varity** is a framework to identify variations in floating-point programs through randomized differential testing. Varity generates random tests that include floating-point operations and compile these tests with multiple different compilers in a system. It also generates random floating-point inputs for the tests. When tests are executed, the results are compared to identify variations in the results. Varity helps users of a system to identify the compilers that produce the most similar results in the system.
 
 # Getting Started
 
 ## Requirements
 You need C compilers, such as clang or gcc, or any other compiler that you want to test in the system. Other compilers we have tested successfully are PGI, NVIDIA nvcc, and the Intel compiler. You also need Python 3. There are no other dependencies.
 
 ## Using Varity
 
 The main Python script is `varity.py` and is located in the `./varity` directory. For now, the main script should be executed from that directory.
 
 ### Configuration
 
 The main configuration file is `cfg.py`; note that this is a Python file. The following are some of the most important configuration options:
 - `COMPILERS = [(name_1, path_1), (name_2, path_2), ...]`: This is the most important option. It specifies the compiler names (name_1, name_2, ...) to test and their paths in the system (path_1, path_2, ...). Names can use underscore ('_'), but not dashes ('-'). Paths should be absolute paths.
 - `NUM_GROUPS`: Random tests are grouped in different directories. This defines the number of groups (or directories). This helps avoiding creating many files in a single directory; if many files per directory is not a problem you can use 1.
 - `TESTS_PER_GROUP`: Number of tests per group. The total number of generated tests is `NUM_GROUPS*TESTS_PER_GROUP`. 
 - `INPUT_SAMPLES_PER_RUN`:
 - `REAL_TYPE`:
 
 ### Running 
 
 After configuring you can simply move to the `varity/` directory and run `python3 varity.py` there. This will do three things: (1) it will generate the random tests; (2) it will compile the tests (producing executables); (3) it will run the executables with random inputs. If you do this, you should expect to see an output like this:
 
 ```sh
 $ python3 varity.py 
 Creating dir: unsullied.llnl.gov_22359
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
 

 
 ### Contact
 For questions, contact Ignacio Laguna <ilaguna@llnl.gov>.
 
 ## License
 
 ...

