import json
import sys

def main():
    fileName = sys.argv[1]
    
    per_compiler_table = {}
    with open(fileName) as json_file:
        data = json.load(json_file)
        for k in data.keys():
            for input in data[k].keys():
                for comp in data[k][input].keys():
                    for op in data[k][input][comp].keys():
                        result = data[k][input][comp][op]
                        d = k+"-"+input+"-"+op
                        if comp in per_compiler_table.keys():
                            per_compiler_table[comp][d] = result
                        else:
                            per_compiler_table[comp] = {d: result}


    allCompilers = list(per_compiler_table.keys())
    combinations  = set([])
    for i in range(len(allCompilers)):
        c1 = allCompilers[i]
        for j in range(i+1, len(allCompilers)):
            c2 = allCompilers[j]
            if c1 != c2:
                diff = 0
                allVals1 = per_compiler_table[c1]
                allVals2 = per_compiler_table[c2]
                for k in allVals1.keys():
                    if allVals1[k] != allVals2[k]:
                        diff = diff + 1
                        #print(c1, c2, i)
                        if "O3" in k.split("-")[-1:]:
                            print("\t-->", c1, c2, allVals1[k], allVals2[k])
                            print(k)

                print("Diff:", c1, c2, diff)
                

main()
