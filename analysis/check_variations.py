
import sys
import json

def loadData(fileName):
  with open(fileName) as f:
    data = json.load(f)

  clang_results = []
  gcc_results = []
  xlc_results = []

  for prog in data:
    for i in data[prog]:
      for compiler in data[prog][i]:
        for opt in data[prog][i][compiler]:
          result = data[prog][i][compiler][opt]

          if opt == 'O3':
            if "time:" in result:
              time = result.split()[1].split(':')[1]
            else:
              time = "0"

          if 'clang' in compiler: clang_results.append(time)
          if 'g++' in compiler: gcc_results.append(time)
          if 'xlc' in compiler: xlc_results.append(time)

  print(clang_results)

if __name__ == '__main__':
  fileName = sys.argv[1]
  print('Loading', fileName)
  loadData(fileName)
