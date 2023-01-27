###############################################################################
# Program generation options
###############################################################################

MAX_EXPRESSION_SIZE = 5
MAX_NESTING_LEVELS = 3
MAX_LINES_IN_BLOCK = 3
ARRAY_SIZE = 10
MAX_SAME_LEVEL_BLOCKS = 2
MATH_FUNC_ALLOWED = True
MATH_FUNC_PROBABILITY = 0.05

###############################################################################
# Compilation options
###############################################################################

# CUDA Generation
CUDA_PROG = False

# Number of directories per experiment.
# Each directory is a group.
NUM_GROUPS = 10

# Number of tests per group
TESTS_PER_GROUP = 50

# Set of commpilers to test.
# COMPILERS is a list containing tuples (x, y), 
# where x is a string with the compiler name, and y is the path to the compiler
#COMPILERS = [("clang_80", "/usr/tce/packages/clang/clang-upstream-2019.03.26/bin/clang"), ("gcc_721", "/usr/tce/packages/gcc/gcc-7.2.1-redhat/bin/gcc"), ("xlc", "/usr/tce/packages/xl/xl-2019.02.07/bin/xlc"), ("nvcc_92", "/usr/tce/packages/cuda/cuda-9.2.148/bin/nvcc")]
#COMPILERS = [("clang_12", "/Users/lagunaperalt1/projects/bin/clang++")]
COMPILERS = [("clang_12", "/usr/tce/packages/clang/clang-ibm-12.0.1/bin/clang++"), ("gcc_8", "/usr/tce/packages/gcc/gcc-8.3.1/bin/g++"), ("xlc_16", "/usr/tce/packages/xl/xl-2022.08.19/bin/xlc++")]

# Levels of optimization to try
#OPT_LEVELS = [("-O0", 1), ("-O0", 0), ("-O1", 0), ("-O2", 0), ("-O3", 0)]
OPT_LEVELS = [("-O1", 0), ("-O2", 0), ("-O3", 0)]
#OPT_LEVELS = ["-O0", "-O1"]

# Name of root directory 
TESTS_DIR = "_tests"

# OpenMP generation
PARALLEL_PROG = True

# Use timers to gather ellapsed time
USE_TIMERS = True

###############################################################################
# Running options
###############################################################################

# Number of random inputs per run
INPUT_SAMPLES_PER_RUN = 1

###############################################################################
# Flaoting-point types
###############################################################################

REAL_TYPE = "double"
#REAL_TYPE = "float"
