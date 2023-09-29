
import gen_program
import random
import gen_inputs
from random_functions import lucky, veryLucky
import type_checking
import cfg

MathFunctions = [
                 "acos(double)",
                 "asin(double)",
                 "atan(double)",
                 "atan2(double,double)",
                 "cos(double)",
                 "cosh(double)",
                 "sin(double)",
                 "sinh(double)",
                 "tanh(double)",
                 "exp(double)",
                 "ldexp(double,int)",
                 "log(double)",
                 "log10(double)",
                 "pow(double,double)",
                 "sqrt(double)",
                 "ceil(double)",
                 "fabs(double)",
                 "floor(double)",
                 "fmod(double,double)"
                 ]

class MathExpression(gen_program.Node):
    def __init__(self, code="", left=None, right=None):
        self.code = code
        self.left  = left
        self.right = right
        self.parameters = []
        self.usedVars = set()

        if cfg.MATH_FUNC_ALLOWED:
            i = random.randrange(0, len(MathFunctions))
            func = MathFunctions[i]
        else:
            func = " (double)"
        
        self.code = func.split("(")[0]
        if not type_checking.areRealsDouble():        
            self.code = self.code + "f"
 
        types = func[:-1].split("(")[1].split(",")
        for t in types:
            if t == "double":
                if veryLucky():
                    varName = gen_inputs.InputGenerator.genInput() 
                    self.parameters.append(varName)
                    self.usedVars.add(varName)
                else:
                    expr = gen_program.Expression()
                    self.parameters.append(expr)
                    self.usedVars = self.usedVars.union(expr.usedVars)
            elif t == "int":
                self.parameters.append("2")

    def printCode(self):
        params = []
        for p in self.parameters:
            if isinstance(p, str):
                params.append(p)
            else:
                params.append(p.printCode(False))
        ret = self.code + "(" + ", ".join(params) + ")"
        return ret

if __name__ == "__main__":
    m = MathExpression()
    print(m.printCode())
