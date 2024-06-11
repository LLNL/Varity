#!/usr/bin/env python3

# This script finds intersting cases:
# (1) when a compiler is an outlier
# (2) when a program fails (hangs) in one compiler but not in others
#
# The script creates a directory and copy such cases in the dirs

import sys
import json
import shutil
import os
from pathlib import Path

COMPARABLE_FACTOR = 0.2
OUTLIER_FACTOR = 1.5

def getData(filename):
  f = open(filename)
  data = json.load(f)
  return data

def findCases(data):

  clang_outliers = []
  gcc_outliers = []
  intel_outliers = []
  failure_cases = []

  for test_file in data:
    for inputs in data[test_file]:
      clang = 0
      gcc = 0
      icpc = 0

      for comp in data[test_file][inputs]:
        for opt in data[test_file][inputs][comp]:
          v = data[test_file][inputs][comp][opt]

          if 'FAIL' in v:
            continue

          t = int(v.split()[1].split(':')[1])

          if 'clang' in comp:
            if opt == 'O3':
              clang = t

          if 'gcc' in comp:
            if opt == 'O3':
              gcc = t

          if 'icpc' in comp:
            if opt == 'O3':
              icpc = t

      #if icpc < clang and icpc < gcc:
      #  print(test_file, 'icpc=', icpc, 'clang', clang, 'gcc=', gcc)

      # we only care for 1000 microsecs
      if min(gcc, icpc, clang) < 1000:
        continue

      # Clang outliers
      if (abs(icpc-gcc) / min(icpc, gcc)) <= COMPARABLE_FACTOR: # gcc, intel are comparable
        if (clang / min(icpc, gcc)) >= OUTLIER_FACTOR:
          clang_outliers.append((test_file, inputs))
          print('Clang outlier:', test_file, 'icpc=', icpc, 'clang', clang, 'gcc=', gcc)

      # Intel outliers
      if (abs(clang-gcc) / min(clang, gcc)) <= COMPARABLE_FACTOR: # gcc, intel are comparable
        if (icpc / min(clang, gcc)) >= OUTLIER_FACTOR:
          intel_outliers.append((test_file, inputs))
          print('Intel outlier:', test_file, 'icpc=', icpc, 'clang', clang, 'gcc=', gcc)

      # Gcc outliers
      if (abs(clang-icpc) / min(clang, icpc)) <= COMPARABLE_FACTOR: # gcc, intel are comparable
        if (gcc / min(clang, icpc)) >= OUTLIER_FACTOR:
          gcc_outliers.append((test_file), inputs)
          print('GCC outlier:', test_file, 'icpc=', icpc, 'clang', clang, 'gcc=', gcc)

  # Save in a directory
  cache = set([])
  main_p = './cases'
 
  # Intel files 
  p = main_p + '/outliers_icpc'
  Path(p).mkdir(parents=True, exist_ok=True)
  for t in intel_outliers:
    name = t[0].replace('/','-')
    if name not in cache:
      shutil.copy(t[0], p+'/'+name)
      cache.add(name)
      with open(p+'/'+name+'_inputs.txt', "w") as text_file:
        text_file.write(' '.join(t[1].split(',')))

  # Clang files 
  p = main_p + '/outliers_clang'
  Path(p).mkdir(parents=True, exist_ok=True)
  for t in clang_outliers:
    name = t[0].replace('/','-')
    if name not in cache:
      shutil.copy(t[0], p+'/'+name)
      cache.add(name)
      with open(p+'/'+name+'_inputs.txt', "w") as text_file:
        text_file.write(' '.join(t[1].split(',')))


if __name__ == '__main__':
  filename = sys.argv[1]
  d = getData(filename)
  findCases(d)
  #clang, gcc, icpc = process(d)

