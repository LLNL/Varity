###############################################################################
# Program generation options
###############################################################################

MAX_EXPRESSION_SIZE = 6
MAX_NESTING_LEVELS = 4
MAX_LINES_IN_BLOCK = 3
ARRAY_SIZE = 10
MAX_SAME_LEVEL_BLOCKS = 2

###############################################################################
# Compilation options
###############################################################################

NUM_GROUPS = 10
TESTS_PER_GROUP = 2
#COMPILERS = [("clang_80", "/usr/tce/packages/clang/clang-upstream-2019.03.26/bin/clang"), ("gcc_721", "/usr/tce/packages/gcc/gcc-7.2.1-redhat/bin/gcc"), ("xlc", "/usr/tce/packages/xl/xl-2019.02.07/bin/xlc"), ("nvcc_92", "/usr/tce/packages/cuda/cuda-9.2.148/bin/nvcc")]
COMPILERS = [("clang_7", "/Users/lagunaperalt1/projects/GPU_work/latest_llvm/llvm-7.0/install/bin/clang"), ("gcc_7", "/opt/local/bin/gcc-mp-7")]
#OPT_LEVELS = ["-O0", "-O1", "-O2", "-O3"]
OPT_LEVELS = ["-O0", "-O1"]
TESTS_DIR = "_tests"

###############################################################################
# Running options
###############################################################################

INPUT_SAMPLES_PER_RUN = 10

###############################################################################
# Flaoting-point types
###############################################################################

REAL_TYPE = "double"
#REAL_TYPE = "float"
