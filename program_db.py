import gen_program
import gen_inputs
import re
import sys

class ProgramDB:
    def __init__(self):
        self.db = set([])

    def addProgram(self, p: str):
        f = ProgramDB.formatProgram(p)
        self.db.add(p)
    
    def isProgramInDB(self, p: str):
        size = len(self.db)
        ProgramDB.addProgram(self, p)
        return size == len(self.db)
        

    def formatProgram(p: str) -> str:
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
        
        return ret
        

if __name__ == "__main__":
    db = ProgramDB()
    sameTotal = 0
    for i in range(500000):
        #sys.stdout.write(".")
        #sys.stdout.flush()
        p = gen_program.Program()
        pStr = p.printCode()[0]
        #f = ProgramDB.formatProgram(pStr)
        #print(f,"\n")
        if db.isProgramInDB(pStr):
            sameTotal = sameTotal + 1
            #print(pStr)
            #print(ProgramDB.formatProgram(pStr))
            #print("\np is in the set:", pStr in db.db)
            per = (float(sameTotal)/i)*100.0
            print("*** [i]:", i, "Same program!", "total", sameTotal, per, "%")
            
            #break
    print("")
