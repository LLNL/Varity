import json
import sys

# Returns the diff of two results
def difference(x, y):
    if "NAN" in x.upper() and "NAN" in y.upper(): # both are nan
        return 0
    
    if "NAN" in x.upper() or "NAN" in y.upper():
        return 1

    if "INF" in x.upper() and "INF" in y.upper():
        if x != y:
            return 1
        else:
            return 0
    
    if "INF" in x.upper() or "INF" in y.upper():
        return 1

    # Assume the result is numerical
    f1 = float(x)
    f2 = float(y)

    if (f1==0 and f2==0):
        return 0

    if (f1==0 or f2==0):
        return abs(f1-f2)

    ret = (f1-f2)/f1
    return ret

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


    # Analysis for compiler pairs (c1, c2)
    allCompilers = list(per_compiler_table.keys())
    combinations  = set([])
    for i in range(len(allCompilers)):
        c1 = allCompilers[i] # compiler 1
        for j in range(i+1, len(allCompilers)):
            c2 = allCompilers[j] # compiler 2
            if c1 != c2:
                #print("COMPILERS:", c1, c2)
                diff = 0
                allVals1 = per_compiler_table[c1]
                allVals2 = per_compiler_table[c2]
                for k in allVals1.keys():
                    resultC1 = allVals1[k]
                    resultC2 = allVals2[k]
                    #print("--->", resultC1, resultC2)
                    if difference(resultC1, resultC2) != 0:
                        diff = diff + 1
                        o = k.split("-")[-1:][0]
                        prog = k.split("-")[0]
                        if o == 'O0':
                            print("\t", c1, c2, resultC1, resultC2, o, prog)

                print("Diff:", c1, c2, diff)
                

main()
