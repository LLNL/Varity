import gen_program
import gen_inputs
import re
import sys

class ProgramDB:
    def __init__(self):
        self.db = set([])

    def addProgram(self, f: str):
        #f = ProgramDB.formatProgram(p)
        self.db.add(f)
    
    def isProgramInDB(self, p: str):
        f = ProgramDB.formatProgram(p)
        #print(f)
        ret = f in self.db
        #size = len(self.db)
        if not ret:
            ProgramDB.addProgram(self, f)
        #return size == len(self.db)
        return ret
            
    def extractComputeFunction(p: str):
        # Remove only the main function
        lines = p.split("\n")
        beginLine = 0
        endLine = 0
        for i in range(len(lines)):
            if "compute(" in lines[i] and "{" in lines[i]:
                beginLine = i
            
            if "initPointer(" in lines[i] and "{" in lines[i]:
                endLine = i-1
        
        newProg = lines[beginLine:endLine]
        newProg = "\n".join(newProg)
        return newProg

    def formatProgram(p: str) -> str:
        p = ProgramDB.extractComputeFunction(p)
        # Transform spaces
        ret = re.sub('\s+', ' ', p).strip()
        #print("\n\nnew str:", ret)
        reals = re.findall(r"([-+]){1}(\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?", ret)
        values = []
        for r in reals:
            val = [r[0],r[1],r[3]]
            f = "".join(val)
            values.append(f)
            #print(f)
            
        for v in values:
            t = gen_inputs.InputGenerator.getRealType(v)
            #print(t, gen_inputs.FPNumberType.zero)
            if t == gen_inputs.FPNumberType.zero:
                name = "ZERO"
            elif t == gen_inputs.FPNumberType.normal:
                name = "NORMAL"
            elif t == gen_inputs.FPNumberType.subnormal:
                name = "SUBNORMAL"
            elif t == gen_inputs.FPNumberType.almost_overflow:
                name = "ALMOST_OVER"
            elif t == gen_inputs.FPNumberType.almost_underflow:
                name = "ALMOST_UNDER"
            else:
                name = "UNDEFINED"
            ret = ret.replace(v, name)

        # Replace variables
        ret = re.sub(r'var_[0-9]+', 'VAR', ret)
        ret = re.sub(r'tmp_[0-9]+', 'TMP', ret)
        
        return ret
        

if __name__ == "__main__":
    db = ProgramDB()
    sameTotal = 0
    window = []
    for i in range(10):
        #sys.stdout.write(".")
        #sys.stdout.flush()
        p = gen_program.Program()
        pStr = p.printCode()[0]
        #print(pStr)
        f = ProgramDB.formatProgram(pStr)
        print(f,"\n")
        winSize = 25
        if len(window) == winSize:
            window.pop(0)
        
        if db.isProgramInDB(pStr):
            sameTotal = sameTotal + 1
            window.append(1)
            avg_win = 0.0
            if len(window) >= winSize:
                avg_win = sum(window)/float(len(window))*100.0
                
            #print(pStr)
            #print(ProgramDB.formatProgram(pStr))
            #print("\np is in the set:", pStr in db.db)
            per = (float(sameTotal)/i)*100.0
            print("*** [i]:", i, "Same program!", "total", sameTotal, per, "%", "win avg.", avg_win)
            #print(window)
            if avg_win > 75.0:
                exit()
        else:
            window.append(0)
            
            #break
    print("")
