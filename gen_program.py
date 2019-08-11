
from enum import Enum
import random
import gen_inputs

# Global sampling parameters
MAX_EXPRESSION_SIZE = 5
MAX_NESTING_LEVELS = 4

# This class generate variable names
varNames = {}
class IdGenerator():
    lastId = 0
    global varNames
    
    def genID(self):
        self.lastId = self.lastId + 1
        name = "var_" + str(self.lastId)
        return name
        
    # generates double variable
    def generateDoubleID(self):
        name = self.genID()
        varNames[name] = "double"
        return name

    # generate int variable
    def generateIntID(self):
        name = self.genID()
        varNames[name] = "int"
        return name

    # returns a list    
    def printAllVars(self):
        ret = []
        for k in varNames.keys():
            ret.append(varNames[k] + " " + k)
        return ret
    
    def printAllTypes(self):
        ret = []
        for k in varNames.keys():
            ret.append(varNames[k])
        return ret

    def getVarsList(self):
        return varNames

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

class Expression(Node):
    global MAX_EXPRESSION_SIZE
    rootNode = None
    variables = set([])
    def __init__(self, idGen, code="=", left=None, right=None):
        self.code = code
        self.left  = left
        self.right = right
        self.idGen = idGen
        size = random.randrange(1, MAX_EXPRESSION_SIZE)

        lastOp = None
        while (size >= 1):
            op = BinaryOperation("")
            op.generate()
            #op.left = idGen.generateDoubleID()
            #op.right = idGen.generateDoubleID()
            op.left = None  
            op.right = None
            
            # Update variable lists
            self.variables.add(op.left)
            self.variables.add(op.right)
            
            if lastOp != None:
                self.variables.remove(lastOp.right)
                lastOp.right = op
            else:
                self.rootNode = op
            lastOp = op
            size = size - 1

    def total(self, n):
        if n == None:
            n = self.idGen.generateDoubleID()
            return n
        elif isinstance(n, str):
            return n
        return "(" + Expression.total(self, n.left) + n.code + Expression.total(self, n.right) + ")"

    def printCode(self):
        t = Expression.total(self, self.rootNode)
        #print("comp " + " {} {};".format(self.code, t))
        return "comp " + self.code + " " + t + ";"

    def getVariableDefinitions(self):
        ret = ""
        for v in self.variables:
            ret = ret + "double " + v + ";\n"
        return ret

# Types of binary operations
class BooleanExpressionType(Enum):
    eq = 0 # equal than
    lt = 1 # less than
    gt = 2 # greater than
    geq = 3 # greater or equal than
    leq = 4 # less or equal than

class BooleanExpression(Node):
    def __init__(self, idGen, code="==", left=None, right=None):
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

        fpVal = gen_inputs.InputGenerator()
        self.left = "comp"
        self.right = fpVal.genInput()

    def printCode(self):
        return self.left + self.code + self.right

class FoorLoopCondition(Node):
    def __init__(self, idGen, code="", left=None, right=None):
        self.code = "int i=0; i < " + idGen.generateIntID() + "; ++i"
    
    def printCode(self):
        return self.code
    

class IfConditionBlock(Node):
    def __init__(self, idGen, level=1, code=None, left=None, right=None):
        self.level = level
        self.identation = ''
        self.identation += '  ' * self.level
        
        # Generate code of the boolean expresion (default)
        self.code = BooleanExpression(idGen)
        
        # Generate code inside the block
        self.left = Expression(idGen)
        self.right = "break;"

    def printCode(self):
        t = "if (" + self.code.printCode() + ") {\n"
        t = t + self.identation + self.left.printCode() + "\n"
        t = t + "}"
        return t

    def setContent(self, c):
        self.left = c

class ForLoopBlock(Node):
    def __init__(self, idGen, level=1, code=None, left=None, right=None):
        self.level = level
        self.identation = ''
        self.identation += '  ' * self.level

        # Generate code of the loop condition
        self.code = FoorLoopCondition(idGen)
        self.left = Expression(idGen)
        self.right = None

    def printCode(self):
        t = "for (" + self.code.printCode() + ") {\n"
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
    
    def __init__(self, idGen, device=False, code=None, left=None, right=None):
        self.device = device
        self.code = None
        self.left = None
        self.right = "}\n"
        self.idGen = idGen
        
        # Sample the blocks and levels of the function
        #levels = random.randrange(1, MAX_NESTING_LEVELS+1)
        levels = 2
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
                c = Expression(idGen)
                if lastBlock != None:
                    lastBlock.setContent(c)
                
                # set the body of the function
                if self.left == None:
                    self.left = c
                
                break
                              
            elif b == CodeBlock.if_codition:
                c = IfConditionBlock(idGen, i+1)
                if lastBlock != None:
                    lastBlock.setContent(c)
                lastBlock = c
            
                # set the body of the function
                if self.left == None:
                    self.left = c
                              
            elif b == CodeBlock.for_loop:
                c = ForLoopBlock(idGen, i+1)
                if lastBlock != None:
                    lastBlock.setContent(c)
                lastBlock = c
                
                # set the body of the function
                if self.left == None:
                    self.left = c
                              
    def printHeader(self):
        h = ""
        if self.device == True:
            h = h + "__global__ "
        h = h + "void compute("
        h = h + "double comp, "
        h = h + ",".join(self.idGen.printAllVars())
        h = h + ") {\n"
        return h

    def writePrintStatement(self):
        return '\n   printf("%.17g\\n", comp);\n'
        
    def printCode(self):
        c = self.left.printCode()
        c = "\n\n" + self.printHeader() + c
        c = c + self.writePrintStatement()
        c = c + "\n}"
        return c

class Program():
    def __init__(self, device=False):
        self.idGen = IdGenerator()
        self.func = FunctionCall(self.idGen, device)
        #print (f.printCode())
        
    def printInputVariables(self):
        ret = ""
        vars = self.idGen.getVarsList()
        
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

            idNum = idNum + 1

        ret = ret + "\n"
        return ret
    
    def printFunctionParameters(self):
        vars = []
        for k in range(len(self.idGen.getVarsList()) + 1):
            vars.append("tmp_" + str(k+1))
        return ",".join(vars)
        

    def printHeader(self):
        h = "\n/* This is a automatically generated test. Do not modify */\n\n"
        h = h + "#include <stdio.h>\n"
        h = h + "#include <stdlib.h>\n"
        h = h + self.func.printCode()
        h = h + "\n\nint main(int argc, char** argv) {\n"
        h = h + "/* Program variables */\n\n"
        h = h + self.printInputVariables()
        return h

    def printCode(self):
        c = self.printHeader()
        # call the function
        c = c + "  compute(" + self.printFunctionParameters() + ");\n"
        c = c + "\n  return 0;\n"
        c = c + "}\n"
        allTypes = ",".join(self.idGen.printAllTypes())
        return (c, allTypes)
        
if __name__ == "__main__":
    p = Program()
    print(p.printCode()[0])
    

