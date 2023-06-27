
import sys
import json
import matplotlib as mpl
import matplotlib.pyplot as plt

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

          if opt == 'O2':
            time = 0
            if "time:" in result:
              time = result.split()[1].split(':')[1]
              time = int(time)

            if 'clang' in compiler: clang_results.append(time)
            if 'gcc' in compiler: gcc_results.append(time)
            if 'xlc' in compiler: xlc_results.append(time)
  
  ### Check for anomalies ###
  for i in range(len(clang_results)):
    if (gcc_results[i] > clang_results[i] and gcc_results[i] > xlc_results[i]):
        print(i,':','gcc',gcc_results[i],'clang',clang_results[i],'xlc',xlc_results[i])
  
  ### Plot Results ###
  x = list(range(1, len(clang_results)+1))
  fig, ax = plt.subplots()
  #ax.plot(x, clang_results, linestyle='.');
  ax.scatter(x, clang_results, label='clang', marker='s');
  ax.scatter(x, gcc_results, label='gcc', marker='P');
  ax.scatter(x, xlc_results, label='xlc', marker='x');
  ax.legend()
  plt.yscale("log")
  ax.set_ylabel('Time (usec)')
  ax.set_xlabel('Runs')
  plt.show()
  #fig.savefig('parallel_programs.pdf', bbox_inches = "tight")

if __name__ == '__main__':
  fileName = sys.argv[1]
  print('Loading', fileName)
  loadData(fileName)
