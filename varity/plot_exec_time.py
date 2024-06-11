#!/usr/bin/env python3

import sys
import json
import matplotlib.pyplot as plt

# Target times for filtering
target_clang = 100
target_gcc = 100
target_icpc = 100

def getData(filename):
  f = open(filename)
  data = json.load(f)
  return data

def process(data):
  clang_O1 = []
  clang_O2 = []
  clang_O3 = []

  gcc_O1 = []
  gcc_O2 = []
  gcc_O3 = []

  icpc_O1 = []
  icpc_O2 = []
  icpc_O3 = []

  files = []
  in_per_file = []

  for test_file in data:
    for inputs in data[test_file]:
      for comp in data[test_file][inputs]:
        for opt in data[test_file][inputs][comp]:
          v = data[test_file][inputs][comp][opt]

          if 'FAIL' in v:
            continue

          t = int(v.split()[1].split(':')[1])

          if 'clang' in comp:
            if opt == 'O1':
              clang_O1.append(t)
            if opt == 'O2':
              clang_O2.append(t)
            if opt == 'O3':
              clang_O3.append(t)

          if 'gcc' in comp:
            if opt == 'O1':
              gcc_O1.append(t)
            if opt == 'O2':
              gcc_O2.append(t)
            if opt == 'O3':
              gcc_O3.append(t)

          if 'icpc' in comp:
            if opt == 'O1':
              icpc_O1.append(t)
            if opt == 'O2':
              icpc_O2.append(t)
            if opt == 'O3':
              icpc_O3.append(t)

  #return clang_O1, gcc_O1, icpc_O1
  #return clang_O2, gcc_O2, icpc_O2
  return clang_O3, gcc_O3, icpc_O3

def findCases(data):
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

#     if icpc > clang and icpc > gcc:
#        print(test_file, 'icpc=', icpc, 'clang', clang, 'gcc=', gcc)

      if icpc < clang and icpc < gcc:
        print(test_file, 'icpc=', icpc, 'clang', clang, 'gcc=', gcc)

def plotData(clang, gcc, icpc):
  assert(len(clang)==len(gcc))
  assert(len(gcc)==len(icpc))

  # Plot times
  x_data = list(range(1,len(clang)+1))
  fig, ax = plt.subplots()
  ax.plot(x_data, clang, 'o',label="clang")
  ax.plot(x_data, gcc, '+', label="gcc")
  ax.plot(x_data, icpc, '*', label="icpc")
  ax.set_yscale('log')
  #ax.set_ylim([100, 2000])
  plt.legend(loc="upper left")
  ax.grid(True)
  #ax.set_xlabel(r'$\Delta_i$', fontsize=15)
  #ax.set_ylabel(r'$\Delta_{i+1}$', fontsize=15)
  fig.tight_layout()
  #plt.savefig('O3.png')
  plt.show()

if __name__ == '__main__':
  filename = sys.argv[1]
  d = getData(filename)
  findCases(d)
  #clang, gcc, icpc = process(d)
  #plotData(clang, gcc, icpc)

