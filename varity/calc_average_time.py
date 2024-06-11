#!/usr/bin/env python3

import sys
import json
import numpy

# Target times for filtering
target_clang = 100
target_gcc = 100
target_icpc = 100

def getData(filename):
  f = open(filename)
  data = json.load(f)
  return data

def calc_times(data):
  all_times = []
  for test_file in data:
    for inputs in data[test_file]:

      for comp in data[test_file][inputs]:
        for opt in data[test_file][inputs][comp]:
          v = data[test_file][inputs][comp][opt]
          if 'FAIL' not in v:
            t = int(v.split()[1].split(':')[1])
            all_times.append(t)

  print('Data size', len(all_times))
  print('Average time:', numpy.average(all_times))
  print('Max time:', max(all_times))
  print('Min time:', min(all_times))

if __name__ == '__main__':
  filename = sys.argv[1]
  d = getData(filename)
  calc_times(d)
