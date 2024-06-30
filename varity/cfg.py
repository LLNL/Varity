###############################################################################
# Program generation options
###############################################################################

MAX_EXPRESSION_SIZE = 5
MAX_NESTING_LEVELS = 3
MAX_LINES_IN_BLOCK = 10
ARRAY_SIZE = 1000
MAX_SAME_LEVEL_BLOCKS = 3
MATH_FUNC_ALLOWED = True
MATH_FUNC_PROBABILITY = 0.01

###############################################################################
# Compilation options
###############################################################################

# CUDA Generation
CUDA_PROG = False

# Number of directories per experiment.
# Each directory is a group.
NUM_GROUPS = 1

# Number of tests per group
TESTS_PER_GROUP = 10

# Number of iterations performed per loop.
# Since the number of iterations is passed as input,
# this is separated from the program generation options.
NUM_ITERATIONS = 1000

# Set of commpilers to test.
# COMPILERS is a list containing tuples (x, y), 
# where x is a string with the compiler name, and y is the path to the compiler
#COMPILERS = [("clang_80", "/usr/tce/packages/clang/clang-upstream-2019.03.26/bin/clang"), ("gcc_721", "/usr/tce/packages/gcc/gcc-7.2.1-redhat/bin/gcc"), ("xlc", "/usr/tce/packages/xl/xl-2019.02.07/bin/xlc"), ("nvcc_92", "/usr/tce/packages/cuda/cuda-9.2.148/bin/nvcc")]
#COMPILERS = [("clang_12", "/Users/lagunaperalt1/projects/bin/clang++")]
#COMPILERS = [("icpc_20220226", "/usr/tce/packages/intel-classic/intel-classic-2021.6.0-magic/bin/icpc"), ("clang_14", "/usr/tce/packages/clang/clang-14.0.6-magic/bin/clang++"), ("gcc_12", "/usr/tce/packages/gcc/gcc-12.1.1-magic/bin/g++")]
#COMPILERS = [("icpx_2023_2_0", "/usr/tce/packages/intel/intel-2023.2.1-magic/bin/icpx")]
#COMPILERS = [("gcc_13_1", "/g/g90/laguna/miniconda3/envs/varity/bin/g++")]
COMPILERS = [("clang_16_0_0", "/usr/workspace/wsa/laguna/compilers/wrappers/clang++"), ("gcc_13_1", "/g/g90/laguna/miniconda3/envs/varity/bin/g++"), ("icpx_2023_2_0", "/usr/tce/packages/intel/intel-2023.2.1-magic/bin/icpx")]

# Levels of optimization to try
#OPT_LEVELS = [("-O0", 1), ("-O0", 0), ("-O1", 0), ("-O2", 0), ("-O3", 0)]
#OPT_LEVELS = [("-O1", 0), ("-O2", 0),  ("-O3", 0)]
OPT_LEVELS = [("-O3", 0)]
#OPT_LEVELS = ["-O0", "-O1"]

# Name of root directory 
TESTS_DIR = "_tests"

# OpenMP generation
PARALLEL_PROG = True
#PARALLEL_PROG = False

# Use timers to gather ellapsed time
USE_TIMERS = True

###############################################################################
# Running options
###############################################################################

# Number of random inputs per run
INPUT_SAMPLES_PER_RUN = 3

###############################################################################
# Flaoting-point types
###############################################################################

REAL_TYPE = "double"
#REAL_TYPE = "float"
