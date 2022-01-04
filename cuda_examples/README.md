# CUDA Examples

This directory contains examples of Varity tests that produce numerical inconsistencies in CUDA programs. All examples are in the `src` directory.

The `outputs.txt` file contains the numerical results for each optimization level. Each test has a corresponding input file. We used CUDA version 9.2 to generate the results.

### Optimization flags
- ` O3_nostrict` is `-O3 -use_fast_math`
- ` O0_nofma` is `-O0 --fmad=false`

