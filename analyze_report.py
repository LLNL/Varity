import json
import sys
import math

optimizations = ["O0_nofma","O0", "O1", "O2", "O3"]
#compilers = ["clang", "gcc", "nvcc", "xlc"]
compilers = ["clang", "gcc", "icc"]


# All possible options of outputs:
#    numerical (non zero; includes subnormals)
#    zero
#    INF
#    -INF
#    NAN

def getType(x: str):
    v = x.upper()
    if "NAN" in v:
        return "NaN"
    if v == "INF" or v == "+INF":
        return "+Inf"
    if v == "-INF":
        return "-Inf"
    # We assume it is numerical
    f = float(x)

    if f == 0:
        return "Zero"
    return "Real"

def getCompiler(c: str):
    if "clang" in c:
        return "clang"
    elif "gcc" in c:
        return "gcc"
    elif "nvcc" in c:
        return "nvcc"
    elif "xlc" in c:
        return "xlc"
    elif "icc" in c:
        return "icc"

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

def getDiffDigits(x, y):
    if getType(x) != "Real" or getType(y) != "Real":
        return 0
    
    diff = (float(x)-float(y))/float(x)
    if math.isinf(diff):
        #return 1e300
        return 0

    if not (abs(diff) > 0.0 and abs(diff) < 1.0):
        return 0

    b = "{:e}".format(diff)
    a = int(b.split("e")[1])
    return abs(a)

def main():
    fileName = sys.argv[1]
    
    per_compiler_table = {}
    with open(fileName) as json_file:
        data = json.load(json_file)
        for k in data.keys():
            for input in data[k].keys():
                for comp in data[k][input].keys():
                    if "pgi" in comp:
                        continue
                    for op in data[k][input][comp].keys():
                        result = data[k][input][comp][op]
                        d = k+"-"+input+"-"+op
                        if comp in per_compiler_table.keys():
                            per_compiler_table[comp][d] = result
                        else:
                            per_compiler_table[comp] = {d: result}


    # Analysis for compiler pairs (c1, c2)
    resultsCombinations = {} # for report 1
    report2Results = {}
    allCompilers = list(per_compiler_table.keys())
    combinations  = set([])
    total = 0
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
                    if k not in allVals2.keys():
                        print("....skipping", k)
                        continue
                    
                    resultC1 = allVals1[k]
                    resultC2 = allVals2[k]
                    #print("--->", resultC1, resultC2)
                    total = total + 1
                    if difference(resultC1, resultC2) != 0:
                        diff = diff + 1
                        o = k.split("-")[-1:][0]
                        prog = k.split("-")[0]
                        if o == 'O0':
                            print("\t", c1, c2, resultC1, resultC2, o, prog, k)
                        
                        # ----- Report 1 data -------
                        comb = [getType(resultC1), getType(resultC2), "z"+o]
                        comb.sort()
                        comb = tuple(comb)
                        if comb in resultsCombinations.keys():
                            resultsCombinations[comb] = resultsCombinations[comb] + 1
                        else:
                            resultsCombinations[comb] = 1
            
                        # ------ Report 2 data ---------
                        if getType(resultC1) == "Real" and  getType(resultC2) == "Real":
                            comb = [getCompiler(c1), getCompiler(c2), "z"+o]
                            comb.sort()
                            comb = tuple(comb)
                            digits = getDiffDigits(resultC1, resultC2)
                            if comb in report2Results.keys():
                                num = report2Results[comb][0] + 1
                                minVal = min(report2Results[comb][1], digits)
                                maxVal = max(report2Results[comb][2], digits)
                                #report2Results[comb] = report2Results[comb] + 1
                                report2Results[comb] = (num, minVal, maxVal)
                            else:
                                report2Results[comb] = (1, digits, digits)

                print("Diff:", c1, c2, diff)

    firstReport(resultsCombinations, total)
    secondReport(report2Results, total)
    #thirdReport(report2Results, total)
    fourthReport(per_compiler_table)

# % of differences for all compilers and all Optimization levels
def firstReport(resultsCombinations, total):
    global optimizations, compilers
    
    print("\n *** Report 1 ***\n")
    
    for k in resultsCombinations:
        print(k, ":", resultsCombinations[k]/total*100.0)
    print("keys:", len(resultsCombinations.keys()))

    optimizations = ["O0_nofma","O0", "O1", "O2", "O3"]
    values = ["Real", "Zero", "NaN", "+Inf", "-Inf"]

    print("\\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|c|c|}")
    print("\hline")
    sys.stdout.write("& {"+values[0]+", "+values[0]+"} & ")
    for x in range(len(values)-1):
        for y in range(x+1,len(values)):
            sys.stdout.write("{"+values[x]+", "+values[y]+"}")
            if x != (len(values)-2):
                sys.stdout.write(" & ")
    print(" \\\\ \hline")

    for op in optimizations:
        sys.stdout.write(op+" & ")
        # ------- Real, Real ------
        comb = [values[0], values[0], "z"+op]
        comb.sort()
        comb = tuple(comb)
        if comb in resultsCombinations.keys():
            per = resultsCombinations[comb]/total*10000.0
            per = '{:1.3f}'.format(per) + '\% & '
        else:
            per = '{:9}'.format("-- & ")
        sys.stdout.write(per)
        # -----------------------------
        for x in range(len(values)-1):
            for y in range(x+1,len(values)):
                comb = [values[x], values[y], "z"+op]
                comb.sort()
                comb = tuple(comb)
                #print("===>", comb)
                if comb in resultsCombinations.keys():
                    per = resultsCombinations[comb]/total*10000.0
                    per = '{:1.3f}'.format(per) + '\%'
                else:
                    #print("not found:", comb)
                    per = '{:9}'.format("--")
                sys.stdout.write(per)
                if x != (len(values)-2):
                    sys.stdout.write(" & ")
        print(" \\\\ \hline")
            

    per_total = 0
    for op in optimizations:
        comb = [values[0], values[0], "z"+op]
        comb.sort()
        comb = tuple(comb)
        if comb in resultsCombinations.keys():
            per_total = per_total + resultsCombinations[comb]/total*10000.0
    sys.stdout.write("All & "+'{:1.3f}'.format(per_total)+"\% & ")
    
    for x in range(len(values)-1):
        for y in range(x+1,len(values)):
            per_total = 0
            for op in optimizations:
                comb = [values[x], values[y], "z"+op]
                comb.sort()
                comb = tuple(comb)
                if comb in resultsCombinations.keys():
                    per_total = per_total + resultsCombinations[comb]/total*10000.0
            sys.stdout.write('{:1.3f}'.format(per_total)+'\%')
            if x != (len(values)-2):
                sys.stdout.write(" & ")
    print(" \\\\ \hline")
    print("\end{tabular}")

# Number of digits of difference for {Real, Real} differences
def secondReport(report2Results, total):
    global optimizations, compilers
    
    for k in report2Results:
        print(k, ":", report2Results[k][0]/total*100.0, report2Results[k][1], report2Results[k][2])

    print("\\begin{tabular}{c|c|c|c|c|c|c}")
    print("\hline")
    sys.stdout.write(" & ")
    for x in range(len(compilers)-1):
        for y in range(x+1,len(compilers)):
            sys.stdout.write(compilers[x]+", "+compilers[y])
            if x != (len(compilers)-2):
                sys.stdout.write(" & ")
    print(" \\\\ \hline")

    for op in optimizations:
        sys.stdout.write(op+" & ")
        # ------ Prints percentages -----------------
        for x in range(len(compilers)-1):
            for y in range(x+1,len(compilers)):
                comb = [compilers[x], compilers[y], "z"+op]
                comb.sort()
                comb = tuple(comb)
                #print("--->", comb)
                if comb in report2Results.keys():
                    per = report2Results[comb][0]/total*10000.0
                    per = '{:1.3f}'.format(per)+'\%'
                else:
                    #print("not found:", comb)
                    per = '{:9}'.format("--")
                sys.stdout.write(per)
                if x != (len(compilers)-2):
                    sys.stdout.write(" & ")
        # ------ Prints min, max -------------------
        print(" \\\\ ")
        sys.stdout.write(" & ")
        for x in range(len(compilers)-1):
            for y in range(x+1,len(compilers)):
                comb = [compilers[x], compilers[y], "z"+op]
                #print("==============>\t", comb)
                comb.sort()
                comb = tuple(comb)
                if comb in report2Results.keys():
                    minDigits = report2Results[comb][1]
                    maxDigits = report2Results[comb][2]
                    sys.stdout.write("["+str(minDigits)+", "+str(maxDigits)+"]")
                else:
                    sys.stdout.write('{:9}'.format("--"))
                if x != (len(compilers)-2):
                    sys.stdout.write(" & ")
        print(" \\\\ \hline")
    print("\end{tabular}")

def thirdReport(report2Results, total):
    global optimizations, compilers
    
    print("\n *** Report 3 ***\n")
    
    for k in report2Results:
        print(k, ":", report2Results[k][0]/total*100.0, report2Results[k][1], report2Results[k][2])

    data = {}
    for op in optimizations:
        for x in range(len(compilers)-1):
            for y in range(x+1,len(compilers)):
                if compilers[x] != 'nvcc' and compilers[y] != 'nvcc':
                    continue
                comb = [compilers[x], compilers[y], "z"+op]
                comb.sort()
                comb = tuple(comb)
                p = report2Results[comb][0]/total*10000.0
                print(compilers[x], compilers[y], op, "-->", p)
                
                if compilers[x] == 'nvcc':
                    pairCompiler = compilers[y]
                else:
                    pairCompiler = compilers[x]
                
                #print("op", op)
                #data[op][pairCompiler] = p
                if op in data.keys():
                    data[op][pairCompiler] = p
                else:
                    data[op] = {pairCompiler: p}

    print("\\begin{tabular}{c|c|c|c}")
    print("\hline")
    # print header 
    sys.stdout.write(" & ")
    line = ""
    for c in data[optimizations[0]].keys():
        line = line + c + " & "
    print(line[:-2] + " \\\\ \hline ")

    # print data
    for op in data.keys():
        sys.stdout.write(op+" & ")
        line = ""
        for c in data[op]:
            line = line + '{:1.3f}'.format(data[op][c]) + "\% & "
        line = line[:-2] + " \\\\ \hline "
        print(line)

    # print total
    line = ""
    for c in ["clang", "gcc", "xlc"]:
        t = 0
        for op in data.keys():
            t = t + float(data[op][c])
        line = line + '{:1.3f}'.format(t) + "\% & "
    print("All & " + line[:-2] + " \\\\ \hline ")
    print("\end{tabular}")

def checkIfThereIsDiffWithNOFMA(op_o0_nofma, op_o0, op_o1, op_o2, op_o3):
    ret0 = 0; ret1 = 0; ret2 = 0; ret3 = 0
    if op_o0_nofma != op_o0:
        ret0 = 1
    if op_o0_nofma != op_o1:
        ret1 = 1
    if op_o0_nofma != op_o2:
        ret2 = 1
    if op_o0_nofma != op_o3:
        ret3 = 1
    return (ret0, ret1, ret2, ret3)

def fourthReport(per_compiler_table):
    global optimizations, compilers
    
    print("\n *** Report 4 ***\n")
    
    totalData = {}
    total = 0
    for c in per_compiler_table.keys():
        op_o0_nofma = ""; op_o0 = ""; op_o1 = ""; op_o2 = ""; op_o3 = ""
        
        for k in per_compiler_table[c].keys():
            op = k.split("-")[-1:][0]
            val = per_compiler_table[c][k]
            if op == "O0_nofma":
                op_o0_nofma = val
            elif op == "O0":
                op_o0 = val
            elif op == "O1":
                op_o1 = val
            elif op == "O2":
                op_o2 = val
            elif op == "O3":
                op_o3 = val
            
            #print(c, op, per_compiler_table[c][k])
            if op_o0_nofma!="" and op_o0!="" and op_o1!="" and op_o2!="" and op_o3!="":
                total = total + 1
                (ret0, ret1, ret2, ret3) = checkIfThereIsDiffWithNOFMA(op_o0_nofma, op_o0, op_o1, op_o2, op_o3)
                a = [ret0, ret1, ret2, ret3]
                #print(ret0, ret1, ret2, ret3)
                op_o0_nofma = ""; op_o0 = ""; op_o1 = ""; op_o2 = ""; op_o3 = ""

                comp = getCompiler(c)
                if comp in totalData.keys():
                    totalData[comp] = [x+y for x,y in zip(totalData[comp],a)]
                else:
                    totalData[comp] = a


    for op in range(4):
        for c in totalData.keys():
            #per = totalData[c][op]/float(total)*10000.0
            #line.append('{:1.3f}'.format(per))
            print(c, "-->", totalData[c])
    print("total--->", total)
    
    print("\\begin{tabular}{c|c|c|c|c}")
    print("\hline")
    line = ""
    for c in sorted(totalData.keys()):
        line = line + c + " & "
    print(" & " + line[:-2] + " \\\\ \hline ")

    totalPer = {}
    for op in range(4):
        line = []
        for c in sorted(totalData.keys()):
            per = totalData[c][op]/float(total)*1000.0
            line.append('{:1.3f}'.format(per)+"\%")
            if c in totalPer.keys():
                totalPer[c] = totalPer[c] + per
            else:
                totalPer[c] = per
        print("O"+str(op)+" & " + " & ".join(line) + " \\\\ \hline ")

    line = []
    for c in sorted(totalPer.keys()):
        line.append('{:1.3f}'.format(totalPer[c])+"\%")
    print("All & " + " & ".join(line) + " \\\\ \hline ")
    print("\end{tabular}")

if __name__ == '__main__':
    main()
