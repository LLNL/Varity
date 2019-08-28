
from enum import Enum
import random
import gen_inputs
import subprocess
import gen_inputs
import gen_math_exp
import id_generator
from random_functions import lucky, veryLucky

# Global sampling parameters
MAX_EXPRESSION_SIZE = 6
MAX_NESTING_LEVELS = 4
MAX_LINES_IN_BLOCK = 3
ARRAY_SIZE = 10

# Basic node in a tree
class Node:
    def __init__(self, code, left=None, right=None):
        self.code = code
        self.left  = left
        self.right = right

    def __str__(self):
        return str(self.code)

    def printCode(self):
        return "{};\n"

# Types of binary operations
class BinaryOperationType(Enum):
    add = 0
    sub = 1
    mul = 2
    div = 3
    
class BinaryOperation(Node):
    def __init__(self, code="", left=None, right=None):
        self.code = code
        self.left  = left
        self.right = right
    
    def generate(self):
        op = random.choice(list(BinaryOperationType))
        if op == BinaryOperationType.add:
            self.code = " + "
        elif op == BinaryOperationType.sub:
            self.code = " - "
        elif op == BinaryOperationType.mul:
            self.code = " * "
        elif op == BinaryOperationType.div:
            self.code = " / "

    def printCode(self):
        return self.code

class Expression(Node):
    global MAX_EXPRESSION_SIZE
    rootNode = None
    def __init__(self, code="=", left=None, right=None, varToBeUsed=None):
        self.left  = left
        self.right = right
        self.varToBeUsed = varToBeUsed
        
        if lucky():
            self.code = code
        else:
            self.code = "+"+code
            
        size = random.randrange(1, MAX_EXPRESSION_SIZE)

        lastOp = None
        mathExpTerminator = None
        while (size >= 1):
            if veryLucky():
                op = gen_math_exp.MathExpression()
                mathExpTerminator = True
            else:
                op = BinaryOperation()
                op.generate()
            
            if lastOp != None:
                lastOp.right = op
            else:
                self.rootNode = op
            lastOp = op
            size = size - 1

            # If we have a math expression, this is a terminator for the tree
            if mathExpTerminator == True:
                break

    def total(self, n):
        if n == None:
            if lucky():
                n = gen_inputs.InputGenerator().genInput()
            else:
                n = id_generator.IdGenerator.get().generateDoubleID()
            return n
        elif isinstance(n, str):
            return n
        elif isinstance(n, gen_math_exp.MathExpression):
            return n.printCode()
        
        ret = Expression.total(self, n.left) + n.code + Expression.total(self, n.right)
        if lucky():
            return '(' + ret + ')'
        return ret

    def printCode(self, assignment=True):
        t = Expression.total(self, self.rootNode)
        if self.varToBeUsed != None:
            for v in self.varToBeUsed:
                op = BinaryOperation()
                op.generate()
                t = v + op.printCode() + t
        
        if assignment == True:
            return "comp " + self.code + " " + t + ";"
        else:
            return t


class VariableDefinition(Node):
    def __init__(self, code=" = ", left=None, right=None, isPointer=False):
        self.code = code
        self.right = right
        self.isPointer = isPointer
        
        if isPointer == True:
            self.left  = id_generator.IdGenerator.get().generateDoubleID(True) + "[i]"
        else:
            self.left  = "double " + id_generator.IdGenerator.get().generateTempDoubleID()
        
        if lucky(): # constant definition
            self.right = gen_inputs.InputGenerator().genInput()
        else:
            self.right = Expression()

    def getVarName(self):
        if self.isPointer == False:
            return self.left.split(" ")[1]
        else:
            return self.left
   
    def printCode(self):
        if isinstance(self.right, str):
            c = self.right
        else:
            c = self.right.printCode(False)
        return self.left + self.code + c + ";"

class OperationsBlock(Node):
    def __init__(self, code="", left=None, right=None, inLoop=False):
        self.code = code
        self.left  = left
        self.right = right
        
        # Define the number of lines that the block will have
        lines = random.randrange(1, MAX_LINES_IN_BLOCK+1)
        assert lines > 0

        # In the block we either have definitions of new variables or 
        # assigments to comp.
        # The last line of the block will always be 
        # an assigment from an expression.
        if lines == 1:
            self.left = [Expression()]
        else:
            i = 1
            varsToBeUsed = []
            l = []
            while(i <= lines):
                    
                if lucky() or i==lines: # expression with assigment
                    c = None
                    if len(varsToBeUsed) > 0:
                        c = Expression("=", None, None, varsToBeUsed[:])
                        varsToBeUsed.clear()
                    else:
                        c = Expression()
                    l.append(c)
                    if i==lines:
                        break
                else:
                    if inLoop==True and lucky():
                        v = VariableDefinition(isPointer=True)
                    else:
                        v = VariableDefinition()
                    l.append(v)
                    varsToBeUsed.append(v.getVarName())
                i = i+1
            self.left = l

    def printCode(self):
        ret = []
        for l in self.left:
            ret.append( l.printCode() )
        return "\n".join(ret)

# Types of binary operations
class BooleanExpressionType(Enum):
    eq = 0 # equal than
    lt = 1 # less than
    gt = 2 # greater than
    geq = 3 # greater or equal than
    leq = 4 # less or equal than

class BooleanExpression(Node):
    def __init__(self, code="==", left=None, right=None):
        #self.idGen = idGen
        op = random.choice(list(BooleanExpressionType))
        if op == BooleanExpressionType.eq:
            self.code = " == "
        elif op == BooleanExpressionType.lt:
            self.code = " < "
        elif op == BooleanExpressionType.gt:
            self.code = " > "
        elif op == BooleanExpressionType.geq:
            self.code = " >= "
        elif op == BooleanExpressionType.leq:
            self.code = " <= "

        self.left = "comp"
        #fpVal = gen_inputs.InputGenerator()
        #self.right = fpVal.genInput()
        self.right = Expression()

    def printCode(self):
        return self.left + self.code + self.right.printCode(False)

class FoorLoopCondition(Node):
    def __init__(self, code="", left=None, right=None):
        self.code = "int i=0; i < " + id_generator.IdGenerator.get().generateIntID() + "; ++i"
    
    def printCode(self):
        return self.code
    
class IfConditionBlock(Node):
    def __init__(self, level=1, code=None, left=None, right=None):
        self.level = level
        self.identation = ''
        self.identation += '  ' * self.level
        
        # Generate code of the boolean expresion (default)
        self.code = BooleanExpression()
        
        # Generate code inside the block
        #self.left = OperationsBlock()
        self.left = left
        self.right = "break;"

    def printCode(self):
        t = "if (" + self.code.printCode() + ") {\n"
        if self.left == None:
            self.left = OperationsBlock()
        t = t + self.identation + self.left.printCode() + "\n"
        t = t + "}"
        return t

    def setContent(self, c):
        self.left = c

class ForLoopBlock(Node):
    def __init__(self, level=1, code=None, left=None, right=None):
        self.level = level
        self.identation = ''
        self.identation += '  ' * self.level

        # Generate code of the loop condition
        self.code = FoorLoopCondition()
        #self.left = OperationsBlock()
        self.left = left
        self.right = None

    def printCode(self):
        t = "for (" + self.code.printCode() + ") {\n"
        if self.left == None:
            self.left = OperationsBlock(inLoop=True)
        t = t + self.identation + self.left.printCode() + "\n"
        t = t + "}"
        return t

    def setContent(self, c):
        self.left = c

class CodeBlock(Enum):
    expression = 1
    if_codition = 2
    for_loop = 3
#    while_loop = 4

class FunctionCall(Node):
    global MAX_NESTING_LEVELS
    
    def __init__(self, code=None, left=None, right=None):
        #self.device = device
        self.code = None
        self.left = None
        self.right = "}\n"
        #self.idGen = idGen
        self.codeCache = None # If the code was printed will be saved here    
    
        # Sample the blocks and levels of the function
        levels = random.randrange(1, MAX_NESTING_LEVELS+1)
        #levels = 2
        #print("levels: {}".format(levels))
        lastBlock = None
        
        blocks = []
        while(levels >= 1):
            b = random.choice(list(CodeBlock))
            blocks.append(b)
            levels = levels-1
        
        #blocks = [CodeBlock.if_codition, CodeBlock.if_codition, CodeBlock.expression]
        for i in range(len(blocks)):
            b = blocks[i]
            if b == CodeBlock.expression:
                c = OperationsBlock()
                if lastBlock != None:
                    lastBlock.setContent(c)
                
                # set the body of the function
                if self.left == None:
                    self.left = c
                
                break
                              
            elif b == CodeBlock.if_codition:
                c = IfConditionBlock(i+1)
                if lastBlock != None:
                    lastBlock.setContent(c)
                lastBlock = c
            
                # set the body of the function
                if self.left == None:
                    self.left = c
                              
            elif b == CodeBlock.for_loop:
                c = ForLoopBlock(i+1)
                if lastBlock != None:
                    lastBlock.setContent(c)
                lastBlock = c
                
                # set the body of the function
                if self.left == None:
                    self.left = c
                              
    def printHeader(self):
        h = ""
        #if self.device == True:
        #    h = h + "__global__ "
        h = h + "void compute("
        h = h + "double comp"
        if len(id_generator.IdGenerator.get().printAllVars()) > 0:
            h = h + ", "
        h = h + ",".join(id_generator.IdGenerator.get().printAllVars())
        h = h + ") {\n"
        return h

    def writePrintStatement(self):
        return '\n   printf("%.17g\\n", comp);\n'
        
    def printCode(self):
        if self.codeCache != None:
            return self.codeCache

        c = self.left.printCode()
        c = self.printHeader() + c
        c = c + self.writePrintStatement()
        c = c + "\n}"
        self.codeCache = c
        return c

class Program():
    def __init__(self):
        id_generator.IdGenerator.get().clear()
        self.func = FunctionCall()
        
    def printInputVariables(self):
        ret = ""
        vars = id_generator.IdGenerator.get().getVarsList()
        
        ret = ret + "  double " + "tmp_1 = atof(argv[1]);\n"
        idNum = 2
        for k in vars.keys():
            type = vars[k]
            if (type == "double"):
                ret = ret + "  double " + "tmp_" + str(idNum)
                ret = ret + " = atof(argv[" + str(idNum) + "]);\n"
            elif (type == "int"):
                ret = ret + "  int " + "tmp_" + str(idNum)
                ret = ret + " = atof(argv[" + str(idNum) + "]);\n"
            elif (type == "double*"):
                ret = ret + "  double* " + "tmp_" + str(idNum)
                ret = ret + " = initPointer( atof(argv[" + str(idNum) + "]) );\n"

            idNum = idNum + 1

        ret = ret + "\n"
        return ret
    
    def printFunctionParameters(self):
        vars = []
        for k in range(len(id_generator.IdGenerator.get().getVarsList()) + 1):
            vars.append("tmp_" + str(k+1))
        return ",".join(vars)

    def printPointerInitFunction(self):
        ret = "\ndouble* initPointer(double v) {\n"
        ret = ret + "  double *ret = (double*)malloc(sizeof(double)*"+ str(ARRAY_SIZE) +");\n"
        ret = ret + "  for(int i=0; i < "+ str(ARRAY_SIZE) +"; ++i)\n"
        ret = ret + "    ret[i] = v;\n"
        ret = ret + "  return ret;\n"
        ret = ret + "}"
        return ret

    def printHeader(self):
        h = "\n/* This is a automatically generated test. Do not modify */\n\n"
        h = h + "#include <stdio.h>\n"
        h = h + "#include <stdlib.h>\n"
        h = h + "#include <math.h>\n\n"
        if self.device == True:
            h = h + "__global__\n"
        h = h + self.func.printCode()
        h = h + "\n" + self.printPointerInitFunction()
        h = h + "\n\nint main(int argc, char** argv) {\n"
        h = h + "/* Program variables */\n\n"
        h = h + self.printInputVariables()
        return h

    def printCode(self, device=False):
        self.device = device
        c = self.printHeader()
        # call the function
        if self.device == False:
            c = c + "  compute(" + self.printFunctionParameters() + ");\n"
        else: # here we call a device kernel
            c = c + "  compute<<<1,1>>>(" + self.printFunctionParameters() + ");\n"
            c = c + "  cudaDeviceSynchronize();\n"

        # finalize main function
        c = c + "\n  return 0;\n"
        c = c + "}\n"
        allTypes = ",".join(id_generator.IdGenerator.get().printAllTypes())
        return (c, allTypes)
        
    def compileProgram(self, device=False):
        (code, allTypes) = self.printCode(device)
        if self.device == False:
            fileName = 'tmp.c'
        else:
            fileName = 'tmp.cu'

        fd =open(fileName, 'w')
        fd.write(code)
        fd.close()
    
        print("Compiling: " + fileName)
        try:
            if self.device == False:
                cmd = "clang -std=c99 -o " + fileName + ".exe " + fileName
            else: # compile for device case
                cmd = "nvcc -o " + fileName + ".exe " + fileName

            print(cmd)
            out = subprocess.check_output(cmd, shell=True)                    
        except subprocess.CalledProcessError as outexc:                                                                                                   
            print ("Error at compile time:", outexc.returncode, outexc.output)

    def runProgram(self):
        print("Running...")
        input = self.getInput()
        try:
            if self.device == False:
                cmd = "./tmp.c.exe " + input
            else:
                cmd = "./tmp.cu.exe " + input

            out = subprocess.check_output(cmd, shell=True) 
            res = out.decode('ascii')[:-1]
            print(cmd)
            print(res)
        except subprocess.CalledProcessError as outexc:                                                                                                   
            print ("Error at runtime:", outexc.returncode, outexc.output)

    def getInput(self):
        allTypes = ",".join(id_generator.IdGenerator.get().printAllTypes())
        print("ALL TYPES", allTypes)
        inGen = gen_inputs.InputGenerator()
        input = inGen.genInput() + " "
        for type in allTypes.split(","):
            if type == "double" or "double*":
                input = input + inGen.genInput() + " "
            elif type == "int":
                input = input + "5 "
        return input

if __name__ == "__main__":
    #for i in range(3):
    p = Program()
    #(c, allTypes) = p.printCode(True)
    print(p.printCode()[0])
    #print(p.printCode(True)[0])
    
    # Compile and run program 
    p.compileProgram()
    p.runProgram()

    #o = OperationsBlock(inLoop=True)
    #print(o.printCode())

    

