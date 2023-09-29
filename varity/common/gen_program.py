
import gen_inputs
import id_generator
import gen_inputs
import cfg

from enum import Enum
import random
import subprocess

from random_functions import lucky, randomListChunk, veryLucky, generateMathExpression
from type_checking import getTypeString, isTypeReal, isTypeRealPointer, isTypeInt

# ================= Global State ===================
parallel_region_generated = False
inCriticalSection = None 
sectionId = 1 
calledNodes = [] # stack of nodes created (ordered)
computationType = None
# ==================================================

class ComputationType(Enum):
    reduction = 0
    shared = 1
    array = 2

# Extend to include boolean operations, not sure if it would
# be useful to be honest?
class ReductionOperationType(Enum):
    add = 0
    sub = 1
    mul = 2
    max = 3
    min = 4

# A wrapper for the data-sharing attributes for a parallel for-block. This
# object should only be necessary for ForLoopBlocks and OperationsBlocks, as
# the ForLoopBlock determines the attributes, while the OperationsBlocks needs
# the attributes to determine which sections are critical.
class DataSharingAttributes:
    def __init__(self, sharedVars=[], privateVars=[], firstPrivateVars=[], includesReduction=False):
        self.sharedVars = sharedVars
        self.privateVars = privateVars 
        self.firstPrivateVars = firstPrivateVars 
        self.includesReduction = includesReduction
        
        # Reduction operations are selected randomly, e.g., +, -, *, etc.
        self.reductionOp = None
        if not self.includesReduction:
            return
        op = random.choice(list(ReductionOperationType))
        if op == ReductionOperationType.add:
            self.reductionOp = "+"
        elif op == ReductionOperationType.sub:
            self.reductionOp = "-"
        elif op == ReductionOperationType.mul:
            self.reductionOp = "*"
        elif op == ReductionOperationType.max:
            self.reductionOp = "max"
        elif op == ReductionOperationType.min:
            self.reductionOp = "min"
        
    def getSharedVars(self):
        return list(self.sharedVars)

    def getPrivateVars(self):
        return list(self.privateVars)

    def getFirstPrivateVars(self):
        return (self.firstPrivateVars)
    
    def getReductionOp(self):
        return self.reductionOp

# Basic node in a tree
class Node:
    def __init__(self, code, left=None, right=None, isParallel=False,
                 dataSharingAttribs=DataSharingAttributes()):
        self.code = code
        self.left  = left
        self.right = right
        self.isParallel = isParallel
        self.dataSharingAttribs = dataSharingAttribs 
        self.definedCriticalVariables = None

    def __str__(self):
        return str(self.code)

    def printCode(self) -> str:
        return "{};\n"
    
    def addCriticalVariable(self, var):
        self.definedCriticalVariables.add(var)

    def getCriticalVariables(self, var):
        return self.definedCriticalVariables

    # In case we want to get other node's attributes. Not sure if
    # will be relevant in final version.
    def getSharedVars(self):
        return self.dataSharingAttribs.getSharedVars()

    def getPrivateVars(self):
        return self.dataSharingAttribs.getPrivateVars()

    def getFirstPrivateVars(self):
        return self.dataSharingAttribs.getFirstPrivateVars()
    
    # If the node involves at least one parallel data-sharing attribute such as
    # "shared", then we will mark it as critical. **This is over-simplified
    # semantics, but it will work for now**
    def isCritical(self, varsToBeUsed):
        if self.isParallel:
            for v in varsToBeUsed:
                if v in self.getSharedVars():
                    return True

        return False

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

    def printCode(self) -> str:
        return self.code

class Expression(Node):
    rootNode = None
    def __init__(self, code="=", left=None, right=None, varToBeUsed=[], isParallel=False, assignment=False, inLoop=False,
                 dataSharingAttribs=DataSharingAttributes()):
        global computationType
        import gen_math_exp
        self.left  = left
        self.right = right
        self.varToBeUsed = varToBeUsed
        self.usedVars = set(varToBeUsed)
        #self.definedVars = set()
        self.isParallel = isParallel
        self.assignment = assignment
        self.inLoop = inLoop
        
        # It becomes pointless to just constantly overwrite
        # comp by using "=", especially with a shared comp
        # between threads.
        if computationType == ComputationType.shared or computationType == ComputationType.array:
            if lucky():
                self.code = "+"+code
            else:
                self.code = "-"+code
        else:
            if lucky():
                self.code = code
            else:
                self.code = "+"+code
            
        size = random.randrange(1, cfg.MAX_EXPRESSION_SIZE)

        lastOp = None
        mathExpTerminator = None
        while (size >= 1):
            if generateMathExpression():
                op = gen_math_exp.MathExpression()
                mathExpTerminator = True
                self.usedVars = self.usedVars.union(op.usedVars)
            else:
                op = BinaryOperation()
                op.generate()
                if lucky():
                    op.left = gen_inputs.InputGenerator.genInput()
                else:
                    op.left = id_generator.IdGenerator.get().generateRealID()
                    
                self.usedVars.add(op.left)

            
            if lastOp != None:
                lastOp.right = op
            else:
                self.rootNode = op
            lastOp = op
            size = size - 1


            # If we have a math expression, this is a terminator for the tree
            if mathExpTerminator == True:
                break
         
        if not mathExpTerminator:
            if lucky():
                lastOp.right= gen_inputs.InputGenerator.genInput()
            else:
                lastOp.right= id_generator.IdGenerator.get().generateRealID()
            
            self.usedVars.add(lastOp.right)

    def total(self, n):
        import gen_math_exp
        if n == None:
            print("NOT GOOD")
        elif isinstance(n, str):
            return n
        elif isinstance(n, gen_math_exp.MathExpression):
            return n.printCode()
        
        ret = Expression.total(self, n.left) + n.code + Expression.total(self, n.right)
        if lucky():
            return '(' + ret + ')'
        return ret

    def printCode(self, assignment=True) -> str:
        calledNodes.append("Expression")
        t = Expression.total(self, self.rootNode)
        if self.varToBeUsed != None:
            for v in self.varToBeUsed:
                op = BinaryOperation()
                op.generate()
                t = v + op.printCode() + t

        if assignment:
            p = ""
            #if self.isCritical():
            #    p = "#pragma omp critical\n"
            if computationType == ComputationType.array and not self.inLoop:
                return p + "comp[{}] ".format(random.randrange(0, cfg.ARRAY_SIZE)) + self.code + " " + t + ";"
            elif computationType == ComputationType.array and self.inLoop:
                if self.isParallel:
                    return p + "comp[omp_get_thread_num()] " + self.code + " " + t + ";"
                return p +  "comp[i % {}] ".format(cfg.ARRAY_SIZE) + self.code + " " + t + ";"
            return p + "comp " + self.code + " " + t + ";"
        else:
            return t

class VariableDefinition(Node):
    def __init__(self, code=" = ", left=None, right=None, isPointer=False, isParallel=False,
                 dataSharingAttribs=DataSharingAttributes()):
        self.code = code
        self.right = right
        self.isPointer = isPointer
        self.isParallel = isParallel
        self.dataSharingAttribs = dataSharingAttribs
        self.usedVars = set()
      #  self.definedVars = set()
        self.isCritical = False
        
        if isPointer == True:
            varName = id_generator.IdGenerator.get().generateRealID(True)
            self.usedVars.add(varName)
            #self.definedVars.add(varName)
            self.left  = varName + "[omp_get_thread_num()]"
        else:
            varName = id_generator.IdGenerator.get().generateTempRealID()
            self.usedVars.add(varName)
            #self.definedVars.add(varName)
            #print("Generate {}".format(varName))
            self.left = getTypeString() + " " + varName
            #if not self.isParallel:
            #    self.left  = getTypeString() + " " + varName 
            # Variable definitions in parallel blocks are "lifted" to the
            # top of the parent parallel block.
            #else:
            #    self.left  = varName 
        
        if lucky(): # constant definition
            self.right = gen_inputs.InputGenerator.genInput()
        else:
            self.right = Expression()
            
        if not isinstance(self.right, str):
            self.usedVars = self.usedVars.union(self.right.usedVars)
            
    def markCritical(self):
        self.isCritical = True

    def getVarName(self):
        if not self.isPointer:
#            if not self.isParallel:
#                return self.left.split(" ")[1]
#            return self.left
            #return self.left.split(" ")[1]
            return self.left.split(" ")[1]
        else:
            #print(self.left[:-3])
            return self.left
   
    def printCode(self) -> str:
        calledNodes.append("VariableDefinition")
        if isinstance(self.right, str):
            c = self.right
        else:
            c = self.right.printCode(False)
        
        p = ""
        # TODO(patrickjchap): Double-check this.
        #if self.isCritical():
        #    p = "#pragma omp critical\n"
            
        #print("Left: " +  self.left)
        # We aren't lifting definitions here anymore, comment out for now.
        #if not self.isPointer and self.isParallel:
        #    p += "// self.left: {}\n".format(self.left)
        #    return p + self.left.split(" ")[1] + self.code + c + ";\n"
        return p + self.left + self.code + c + ";\n"
    
    def size(self) -> int:
        if not self.isPointer:
            return 0
        

# A non-recursive block has only expressions (it does not have if-blocks or loop-blocks)
class OperationsBlock(Node):
    def __init__(self, level=1, code="", left=None, right=None, inLoop=False, recursive=True, isParallel=False,
                 dataSharingAttribs=DataSharingAttributes()):
        self.code = code
        self.left  = left
        self.right = right
        self.isParallel = isParallel
        self.level = level
        self.dataSharingAttribs = dataSharingAttribs
        self.usedVars = set()
        self.inLoop = inLoop
        #self.definedVars = set()
        # These are variables defined in critical sections.
        self.definedCriticalVariables = set()
        
        # Defines the number of lines that the block will have
        lines = random.randrange(2, cfg.MAX_LINES_IN_BLOCK+1)
        assert lines > 0

        # In the block, we either have definitions of new variables or 
        # assigments to comp. The last line of the block will always be 
        # an assigment from an expression:
        #    comp = ...
        if lines == 1:
            self.left = [Expression(isParallel=isParallel, inLoop=inLoop, assignment=True)]
            self.usedVars.union(self.left[0].usedVars)
        else:
            i = 1
            varsToBeUsed = []
            l = []
            while(i <= lines):
                
                # With parallel programs, we don't want to always be
                # stuck in critical sections, so we want to try and
                # limit an over-abundance of writes/reads to comp.
                if veryLucky() or i==lines: # expression with assigment
                    c = None
                    if len(varsToBeUsed) > 0:
                        c = Expression("=", None, None, varsToBeUsed[:], isParallel=isParallel, inLoop=inLoop, assignment=True)
                        varsToBeUsed.clear()
                    else:
                        c = Expression(isParallel=isParallel, inLoop=inLoop, assignment=True)
                    l.append(c)
                    self.usedVars = self.usedVars.union(c.usedVars)
                    if i==lines:
                        break
                else:
                    v = None
                    if inLoop==True and lucky():
                        v = VariableDefinition(isPointer=True, isParallel=isParallel)
                        #self.definedVars = self.definedVars.union(v.definedVars)
                        #v = VariableDefinition(isPointer=False, isParallel=isParallel)
                    else:
                        v = VariableDefinition(isParallel=isParallel)
                        #self.definedVars = self.definedVars.union(v.definedVars)
                    l.append(v)
                    varsToBeUsed.append(v.getVarName())
                    self.usedVars.add(v.getVarName())

                i = i+1
            self.left = l

        # An operations block can also have if-conditions and loop blocks
        if recursive:
            nBlocks = random.randrange(0, cfg.MAX_SAME_LEVEL_BLOCKS+1)
            #nBlocks = 2
            for k in range(nBlocks):
                if lucky():
                    b = IfConditionBlock(recursive=False, inLoop=inLoop, isParallel=isParallel)
                    #self.definedVars = self.definedVars.union(b.definedVars)
                else:
                    # If we are already in a parallel for-loop, we don't
                    # want to enter another.
                    if cfg.PARALLEL_PROG and not self.isParallel:
                        # Randomly start a parallel for-loop if we are not in one.
                        if lucky():
                            b = ForLoopBlock(recursive=False, isParallel=True, level=self.level+1)
                            #self.definedVars = self.definedVars.union(b.definedVars)
                        # Mark the for-loop parallel if we are in a parallel block.
                        # We should be OK to not have nested parallel for-loops, as
                        # we have a global state check for this. Marking this parallel
                        # ensures we mark it critical if necessary!
                        else:
                            b = ForLoopBlock(recursive=False, isParallel=isParallel, inLoop=inLoop, level=self.level+1)
                            #self.definedVars = self.definedVars.union(b.definedVars)
                    else:
                        b = ForLoopBlock(recursive=False, isParallel=isParallel, level=self.level+1)
                        #self.definedVars = self.definedVars.union(b.definedVars)
                #print("1: ", self.usedVars)
                self.usedVars = self.usedVars.union(b.usedVars)
                self.left.append(b)
                #print("2: ", self.usedVars)
                
    def isLineCritical(self, line):
        global computationType
#        if self.isParallel and computationType != ComputationType.reduction:
#            for v in line.usedVars:
#                if (v in self.dataSharingAttribs.getSharedVars() or v in self.definedCriticalVariables):
#                    if isinstance(line, VariableDefinition):
#                        self.definedCriticalVariables.add(line.getVarName())
#                        line.markCritical()
#                    return True
#                

        # Generated conditions are always dependent on reading from comp. 
        if self.isParallel and isinstance(line, IfConditionBlock) and computationType == ComputationType.shared:
            #if computationType == ComputationType.shared or computationType == ComputationType.array:
            return True
        if self.isParallel and isinstance(line, Expression) and computationType == ComputationType.shared:
            # If not a reduction or a pointer, then we are writing to a shared instance of
            # comp that is a double. If assignment is true, then it is a write to comp.
            if line.assignment:
                return True

        return False
    
    def getCriticalBounds(self):
        low = None
        high = None 
        prevLineCritical = False
        for idx, l in enumerate(self.left):
            if self.isLineCritical(l):
                if not prevLineCritical and low == None:
                    #if isinstance(l, ForLoopBlock):
                    #    continue
                    low = idx 
                    high = idx 
                    prevLineCritical = True
                else:
                    high = idx
                    prevLineCritical = True
            # Inner for-loop blocks are not necessarily critical in
            # its entirety, but if a previous read/write to comp
            # is performed, then this block will also have under the
            # critical section since the last statement will be a write
            # to comp in the inner for-loop.
            elif prevLineCritical and isinstance(l, ForLoopBlock):
                high = idx
                prevLineCritical = True
            else:
                prevLineCritical = False
                
        return low, high
            
                    
    def printCode(self) -> str:
        calledNodes.append("OperationsBlock")
        global inCriticalSection
        global sectionId
        sectionId = sectionId + 1
        self.id = sectionId
        ret = []
        lastLineCritical = False
        # TODO(patrickjchap): I think some of this low/high stuff is unnecessary now.
        # This causes printing to from O(n) to O(2n) from the OperationsBlock.
        low, high = self.getCriticalBounds()
        ret.append("//Is parallel: {}; inLoop: {}\n".format(self.isParallel, self.inLoop))
        for idx, l in enumerate(self.left):
            p = ""
            
            # We assign the inCriticalSection to the specific operations block
            # that started the critical section so that we don't exit the critical
            # section prematurely in another block.
            # TODO(patrickjchap): Below is basically irrelevant if we
            # are testing OMP constructs with comp.
#            if not inCriticalSection and low != None and low == idx:
#                inCriticalSection = self.id 
#                p = ""
#                for var in self.definedVars:
#                    if "tmp" in var:
#                        p += getTypeString() + " " + var + ";\n"
#                p += "#pragma omp critical\n"
#                p += "// Low: {}, High: {}, {}\n".format(low, high, self.definedCriticalVariables)
#                p += "// Shared: {}\n".format(self.dataSharingAttribs.getSharedVars())
#                p += "// Private: {}\n".format(self.dataSharingAttribs.getPrivateVars())
#                p += "// FirstPrivate: {}\n".format(self.dataSharingAttribs.getFirstPrivateVars())
#                p += "{\n"

            if computationType != ComputationType.reduction:
                if not inCriticalSection and low != None and low == idx:
                    p += "// New critical section!!!\n"
                    # Randomly use atomic update when a shared double is used for comp.
                    if lucky() and low == high:
                        p += "// New atomic section!!!\n"
                        p += "#pragma omp atomic \n"
                    else:
                        p += "#pragma omp critical\n{ // BEGIN CRITICAL\n"
                        inCriticalSection = self.id
                        lastLineCritical = True
                    ret.append(p + l.printCode())
                    continue
                                                 
#            if computationType != ComputationType.reduction:
#                if inCriticalSection and self.id == inCriticalSection and high == idx:
#                    ret.append("\n} // END CRITICAL\n")
#                    inCriticalSection = False 
#                    lastLineCritical = False
            ret.append(p + l.printCode())

            if high != None and high == idx and self.id  == inCriticalSection:
                ret.append("\n} // END CRITICAL \n")
                inCriticalSection = None 
                lastLineCritical = False
#
#
        if lastLineCritical:
            ret.append("\n} // END CRITICAL\n")
                
        return "\n".join(ret)
    
    def setDataSharingAttributes(self, dataSharingAttributes: DataSharingAttributes):
        self.dataSharingAttribs = dataSharingAttributes


# Types of binary operations
class BooleanExpressionType(Enum):
    eq = 0 # equal than
    lt = 1 # less than
    gt = 2 # greater than
    geq = 3 # greater or equal than
    leq = 4 # less or equal than

class BooleanExpression(Node):
    def __init__(self, code="==", left=None, right=None, inLoop=False):
        #self.idGen = idGen
        global computationType
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

        if computationType == ComputationType.array and inLoop:
            self.left = "comp[omp_get_thread_num()]"
        # TODO(patrickjchap): If it's not in a loop,
        # definition of i will not be available,
        # arbitrarily choosing an index based on
        # cfg.ARRAY_SIZE.
        elif computationType == ComputationType.array:
            self.left = "comp[{}]".format(random.randrange(0, cfg.ARRAY_SIZE))
        else:
            self.left = "comp"
        self.right = Expression()
        
        self.usedVars = {"comp"}.union(self.right.usedVars)

    def printCode(self) -> str:
        return self.left + self.code + self.right.printCode(False)

class ForLoopCondition(Node):
    def __init__(self, code="", left=None, right=None):
        self.variableBoundOn = id_generator.IdGenerator.get().generateIntID()
        self.code = "int i=0; i < " + self.variableBoundOn + "; ++i"
        self.usedVars = {self.variableBoundOn}
    
    def printCode(self) -> str:
        return self.code
    
class IfConditionBlock(Node):
    def __init__(self, level=1, code=None, left=None, right=None, recursive=True, isParallel=False, inLoop=False,
                 dataSharingAttribs=DataSharingAttributes()):
        self.level = level
        self.indentation = ''
        self.indentation += '  ' * self.level
        self.rec = recursive
        self.isParallel = isParallel
        self.inLoop = inLoop
        self.dataSharingAttribs = dataSharingAttribs
        #self.definedVars = set()
        
        # Generate code of the boolean expresion (default)
        self.code = BooleanExpression(inLoop=inLoop)
        self.usedVars = self.code.usedVars 
        
        # Generate code inside the block
        self.left = left
        self.right = "break;"
        
        if self.left == None:
            self.left = OperationsBlock(recursive=self.rec, inLoop=inLoop, isParallel=isParallel,
                                        dataSharingAttribs=self.dataSharingAttribs)
            
        #self.definedVars = self.definedVars.union(self.left.definedVars)
        self.usedVars = self.usedVars.union(self.left.usedVars)

    def printCode(self) -> str:
        calledNodes.append("IfConditionBlock")
        t = "// Is parallel: {}; inLoop: {}\n".format(self.isParallel, self.inLoop)
        t += "if (" + self.code.printCode() + ") {\n"
        #t = t + self.indentation + self.left.printCode() + "\n"
        for line in self.left.printCode().splitlines():
            t += self.indentation + line + "\n"
        t += "}\n"
        return t

    def setContent(self, c):
        # Resetting used variables to just the boolean expression.
        #print("Before: ", self.usedVars)
        self.usedVars = self.code.usedVars

        self.left = c
        if not isinstance(c, str):
            self.usedVars = self.usedVars.union(c.usedVars)
        
        #print("After: ", self.usedVars)

class ForLoopBlock(Node):
    def __init__(self, level=1, code=None, left=None, right=None, recursive=True, isParallel=False, inLoop=False,
                 dataSharingAttribs=DataSharingAttributes()):
        self.level = level
        self.indentation = ''
        self.indentation += '  ' * self.level
        self.rec = recursive
        self.isParallel = isParallel
        self.inLoop = inLoop
        self.dataSharingAttribs = dataSharingAttribs
        #self.definedVars = set()

        # Generate code of the loop condition
        self.code = ForLoopCondition()
        self.usedVars = self.code.usedVars 
        #self.left = OperationsBlock()
        self.left = left
        self.right = None
        
        if self.isParallel and left != None:
            self.left.isParallel = True

        if self.left == None:
            self.left = OperationsBlock(level=self.level+1, inLoop=True, recursive=self.rec, isParallel=self.isParallel,
                                        dataSharingAttribs=self.dataSharingAttribs)

        #self.definedVars = self.definedVars.union(self.left.definedVars)
        self.usedVars = self.usedVars.union(self.left.usedVars)
        self.generateDataSharingAttribs()
        
        if isinstance(self.left, OperationsBlock):
            self.left.setDataSharingAttributes(self.dataSharingAttribs)
            
    def generateDataSharingAttribs(self):
        global computationType
        # We can't just simply pass the IDs from this list for two reasons:
        #   1. This doesn't include the 'comp' variable
        #   2. This list WILL include the variable the for-loop is bound on
        #     * We don't want to do this with OpenMP's behavior.
        vars_list = [x for x in id_generator.IdGenerator.get().getVarsList().keys()]
        #print("vars list: {}".format(vars_list))
        try:
            vars_list.remove(self.code.variableBoundOn)
            #print("Variable {} i sin list and bound".format(self.code.variableBoundOn))
        except ValueError:
            print("Variable {} not in list but bounding".format(self.code.variableBoundOn))
        #vars_list.append("comp")
        attribs = randomListChunk(vars_list, n=3)
        # Unless comp is a reduction variable, it is always shared.
        if computationType != ComputationType.reduction:
            attribs[0].append("comp")
        else:
            print("is reduction!!!")
        #print("{} : {}".format(computationType, computationType==ComputationType.reduction))
        self.dataSharingAttribs = DataSharingAttributes(
            sharedVars=attribs[0],
            privateVars=attribs[1],
            firstPrivateVars=attribs[2],
            includesReduction=computationType==ComputationType.reduction,
        )
        
    def setDataSharingAttributes(self, sharedVars=[], privateVars=[], firstPrivateVars=[], includesReduction=False):
        self.dataSharingAttribs = DataSharingAttributes(
            sharedVars=sharedVars,
            privateVars=privateVars,
            firstPrivateVars=firstPrivateVars,
            includesReduction=includesReduction
        )
        
    def printBody(self) -> str:
        t = "for (" + self.code.printCode() + ") {\n"
        #t = t + self.indentation + self.left.printCode() + "\n"
        for line in self.left.printCode().splitlines():
            t += self.indentation + line + "\n"
        t += "}\n"
        return t

    def printDataSharingAttributes(self) -> str:
        sv = ""
        #if len(self.dataSharingAttribs.getSharedVars()) >= 1:
        #    sv = "shared(" + ", ".join(self.dataSharingAttribs.getSharedVars()) + ")"
        pv = ""
        if len(self.dataSharingAttribs.getPrivateVars()) >= 1:
            pv = "private(" + ", ".join(self.dataSharingAttribs.getPrivateVars()) + ")"
        fpv = ""
        if len(self.dataSharingAttribs.getFirstPrivateVars()) >= 1:
            fpv = "firstprivate(" + ", ".join(self.dataSharingAttribs.getFirstPrivateVars()) + ")"
        rv = ""
        if self.dataSharingAttribs.includesReduction:
            rv = "reduction({}: comp)".format(self.dataSharingAttribs.getReductionOp())

        t = "#pragma omp parallel default(shared) {} {} {} {} num_threads({})\n".format(sv, pv, fpv, rv, cfg.ARRAY_SIZE)
        t += "{\n"
        # Temporal variables used for intermmediate computations can be defined in
        # critical sections, but this reduces their scope to only those critical blocks. Instead,
        # to make this mimic more "real-world" scenarios, we can declare the variables
        # at the beginning of the parallel block so that they are available to all subsequent blocks.
        #for var in self.usedVars:
        #       if "tmp" in var:
        #           t += getTypeString() + " " + var + ";\n"

        # Since the behavior of private variable values is undefined initially, we
        # will immediately just assign the private variables to 0, or if they are a
        # pointer, we will have to re-alloc and then automatically assign 0 to each
        # indices.
        init_private_pointer = ""
        init_private_int = ""
        init_private_real = ""
        var_type = id_generator.IdGenerator.get().getVarsList()
        for var in self.dataSharingAttribs.getPrivateVars():
            type = var_type[var]
            if isTypeInt(type):
               init_private_int += "{} = 0;\n".format(var)
            elif isTypeReal(type):
               init_private_real += "{} = 0.0;\n".format(var)
            elif isTypeRealPointer(type):
               init_private_pointer += "{} = initDynamicArray(0, {});\n".format(var, cfg.ARRAY_SIZE)
#        if len(self.dataSharingAttribs.getPrivateVars()) >= 1:
#            t += " = ".join(self.dataSharingAttribs.getSharedVars()) + " = 0;\n" 
        t += init_private_pointer + init_private_int + init_private_real + "#pragma omp for\n"
        return t

    def printCode(self) -> str:
        calledNodes.append("ForLoopBlock")
        global parallel_region_generated

        c = ""
        # We mark this here so that any inner-loops don't use
        # incorrectly use parallel for-loop expressions.
        if self.isParallel and not parallel_region_generated:
            parallel_region_generated = True 
            c = self.printBody()
            c = self.printDataSharingAttributes() + c + "\n}\n"
            parallel_region_generated = False
        else:
            c = self.printBody()
        
        return c 

    def setContent(self, c):
        # Resetting used variables to just the boolean expression.
        self.usedVars = self.code.usedVars

        self.left = c
        if not isinstance(c, str):
            self.usedVars = self.usedVars.union(c.usedVars)

class CodeBlock(Enum):
    expression = 1
    if_codition = 2
    for_loop = 3
#    while_loop = 4

class FunctionCall(Node):
    #global MAX_NESTING_LEVELS
    
    def __init__(self, code=None, left=None, right=None, parameterVarNames=[]):
        #self.device = device
        self.code = None
        self.left = None
        self.right = "}\n"
        #self.idGen = idGen
        self.codeCache = None # If the code was printed will be saved here    
        self.parameterVarNames = parameterVarNames
    
        # Sample the blocks and levels of the function
        levels = random.randrange(1, cfg.MAX_NESTING_LEVELS+1)
        #levels = 2
        #print("levels: {}".format(levels))
        lastBlock = None
        
        blocks = []
        while(levels >= 1):
            b = random.choice(list(CodeBlock))
            blocks.append(b)
            levels = levels-1
        
        parallel_for_blocks = []
        #blocks = [CodeBlock.if_codition, CodeBlock.if_codition, CodeBlock.expression]
        for i in range(len(blocks)):
            b = blocks[i]
            if b == CodeBlock.expression:
                c = None
                if lastBlock != None:
                    c = OperationsBlock(isParallel=lastBlock.isParallel, inLoop=lastBlock.inLoop)
                    lastBlock.setContent(c)                
                else:
                    c = OperationsBlock()
                
                # set the body of the function
                if self.left == None:
                    self.left = c
                
                parallel_for_blocks.append(c)
                blocks = blocks[:i+1]
                break
                                
            elif b == CodeBlock.if_codition:
                c = None
                if lastBlock != None:
                    c = IfConditionBlock(i+1, isParallel=lastBlock.isParallel, inLoop=lastBlock.inLoop)
                    lastBlock.setContent(c)                
                else:
                    c = IfConditionBlock(i+1)
                
                lastBlock = c
            
                # set the body of the function
                if self.left == None:
                    self.left = c
                parallel_for_blocks.append(lastBlock)
                                
            elif b == CodeBlock.for_loop:
                # We want to set data sharing attributes here for the first time.
                # Subsequent blocks under parallel sections will maintain the same
                # data sharing attributes mapping as it is parameterized.
                # TODO: The way lastBlock is handled here is pretty verbose/bad.
                if cfg.PARALLEL_PROG:
                    if lucky():
                        # Dealing with race conditions in nested loops becomes
                        # signifcantly harder, especially with arrays.
                        if computationType == ComputationType.array:
                            if lastBlock != None:
                                c = ForLoopBlock(i+1, isParallel=True, inLoop=lastBlock.inLoop, recursive=False)
                            else:
                                c = ForLoopBlock(i+1, isParallel=True, recursive=False)
                        else:
                            if lastBlock != None:
                                c = ForLoopBlock(i+1, isParallel=True, inLoop=lastBlock.inLoop)
                            else:
                                c = ForLoopBlock(i+1, isParallel=True)
                
                    else:
                        if lastBlock != None:
                            c = ForLoopBlock(i+1, isParallel=lastBlock.isParallel, inLoop=lastBlock.inLoop)
                        else:
                            c = ForLoopBlock(i+1)
                else:
                    if lastBlock!= None:
                        c = ForLoopBlock(i+1, inLoop=lastBlock.inLoop)
                    else:
                        c = ForLoopBlock(i+1)
                
                if lastBlock != None:
                    lastBlock.setContent(c)
                lastBlock = c
                
                # set the body of the function
                if self.left == None:
                    self.left = c
                parallel_for_blocks.append(lastBlock)
                
            else:
                parallel_for_blocks.append(None)
                
#        print(len(parallel_for_blocks))
#        print(len(blocks))
#        for i in range(len(blocks)):
#            b = blocks[i]
#            if b == CodeBlock.for_loop:
#                if parallel_for_blocks[i].isParallel:
#                    attribs = randomListChunk(["comp"].extend(id_generator.IdGenerator.get().getVarsList().keys()), n=3)
#                    parallel_for_blocks[i].setDataSharingAttributes(
#                        sharedVars=attribs[0],
#                        privateVars=attribs[1],
#                        firstPrivateVars=attribs[2]
#                    )
                    
                    
    def getParameters(self):
        return self.parameterVarNames
                              
    def printHeader(self):
        global computationType
        h = ""
        #if self.device == True:
        #    h = h + "__global__ "
        h = h + "void compute("
        if computationType == ComputationType.array:
            h = h + getTypeString() + "* comp"
        else:
            h = h + getTypeString() + " comp"
        if len(id_generator.IdGenerator.get().printAllVars()) > 0:
            h = h + ", "
        h = h + ",".join(id_generator.IdGenerator.get().printAllVars())
        h = h + ") {\n"
        if cfg.USE_TIMERS:
            h = h + self.writeTimeBegin()
        return h

    def writePrintStatement(self):
        global computationType
        ret = ""
        if cfg.USE_TIMERS:
            if computationType == ComputationType.array:
                ret += '\n   printf("%.17g ", comp[0]);\n'
            else:
                ret += '\n   printf("%.17g ", comp);\n'
            ret += self.writeTimeEnd()
        else:
            if computationType == ComputationType.array:
                ret += '\n   printf("%.17g\\n", comp[0]);\n'
            else:
                ret += '\n   printf("%.17g\\n", comp);\n'
        return ret
        #return '\n   printf("%.17g\\n", comp);\n'
    
    def writeTimeBegin(self):
        return '   std::chrono::steady_clock::time_point begin = std::chrono::steady_clock::now();\n'
    
    def writeTimeEnd(self):
        ret = '   std::chrono::steady_clock::time_point end = std::chrono::steady_clock::now();\n'
        ret += '   std::cout << "time:" << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() << std::endl;\n'
        return ret
        
    def printCode(self) -> str:
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
        global computationType
        id_generator.IdGenerator.get().clear()
        computationType = random.choice(list(ComputationType))
        self.func = FunctionCall()
        
    def printInputVariables(self):
        global computationType
        ret = ""
        vars = id_generator.IdGenerator.get().getVarsList()
        
        if computationType == ComputationType.array:
            ret = ret + " " + getTypeString() + "* " + "tmp_1 = initDynamicArray(atof(argv[1]), {});\n".format(cfg.ARRAY_SIZE)
        
        else:
            ret = ret + "  " + getTypeString() + " " + "tmp_1 = atof(argv[1]);\n"
        idNum = 2
        for k in vars.keys():
            type = vars[k]
            if (isTypeReal(type)):
                ret = ret + "  " + getTypeString() + " " + "tmp_" + str(idNum)
                ret = ret + " = atof(argv[" + str(idNum) + "]);\n"
            elif (isTypeInt(type)):
                ret = ret + "  int " + "tmp_" + str(idNum)
                ret = ret + " = atoi(argv[" + str(idNum) + "]);\n"
            elif (isTypeRealPointer(type)):
                ret = ret + "  "+type+" " + "tmp_" + str(idNum)
                # Kind of hacky to just assume the size is based off the previous input integer, but that's how
                # the current code-base is structured.
                #ret = ret + " = initPointer( atof(argv[" + str(idNum) + "]), atoi(argv[" + str(idNum-1) + "]) );\n"
                ret = ret + " = initDynamicArray( atof(argv[" + str(idNum) + "]), {});\n".format(cfg.ARRAY_SIZE)

            idNum = idNum + 1

        ret = ret + "\n"
        return ret
    
    def printFunctionParameters(self):
        vars = []
        for k in range(len(id_generator.IdGenerator.get().getVarsList()) + 1):
            vars.append("tmp_" + str(k+1))
        return ",".join(vars)

    def printPointerInitFunction(self):
        ret = "\n"+getTypeString()+"* initDynamicArray("+getTypeString()+" v, int arraySize) {\n"
        ret = ret + "  "+getTypeString()+" *ret = "
        ret = ret + "("+getTypeString()+"*) malloc(sizeof("+getTypeString()+")* arraySize);\n"
        ret = ret + "  for(int i=0; i < arraySize; ++i)\n"
        ret = ret + "    ret[i] = v;\n"
        ret = ret + "  return ret;\n"
        ret = ret + "}"
        return ret
    
    def printStaticInitFunction(self):
        ret = "\n"+getTypeString()+"* initStaticArray("+getTypeString()+" v, int arraySize) {\n"
        ret = ret + "  "+getTypeString()+" *ret = "
        ret = ret + "("+getTypeString()+"*) malloc(sizeof("+getTypeString()+")* arraySize);\n"
        ret = ret + "  for(int i=0; i < arraySize; ++i)\n"
        ret = ret + "    ret[i] = v;\n"
        ret = ret + "  return ret;\n"
        ret = ret + "}"
        return ret

    def printHeader(self):
        h = "\n/* This is a automatically generated test. Do not modify */\n\n"
        h = h + "#include <stdio.h>\n"
        h = h + "#include <stdlib.h>\n"
        if cfg.PARALLEL_PROG:
            h = h + "#include <omp.h>\n"
        if cfg.USE_TIMERS:
            h = h + "#include <iostream>\n"
            h = h + "#include <chrono>\n"
        h = h + "#include <math.h>\n\n"

        # Function declaration before compute function so we can
        # call init function when arrays are private in parallel
        # blocks.
        h += getTypeString()+"* initDynamicArray("+getTypeString()+" v, int arraySize);\n"
        
        if self.device == True:
            h = h + "__global__\n"
        h = h + self.func.printCode()
        h = h + "\n" + self.printPointerInitFunction()
        h = h + "\n\nint main(int argc, char** argv) {\n"
        h = h + "/* Program variables */\n\n"
        h = h + self.printInputVariables()
        return h

    def printCode(self, device=False) -> (str,str):
        self.device = device
        c = "// Computation Type: {}\n".format(computationType.name)
        c += self.printHeader()
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
        #print("ALL TYPES", allTypes)
        #inGen = gen_inputs.InputGenerator()
        input = gen_inputs.InputGenerator.genInput() + " "
        typeList = allTypes.split(",")
        for type in typeList:
            if isTypeReal(type) or isTypeRealPointer(type):
                input = input + gen_inputs.InputGenerator.genInput() + " "
            elif isTypeInt(type):
                input = input + "5 "
        return input

if __name__ == "__main__":

    #p = Program()
    #(c, allTypes) = p.printCode(True)
    #print(p.printCode()[0])
    #print(p.printCode(True)[0])
    
    #print(calledNodes)
    
    # Compile and run program 
    #p.compileProgram()
    #p.runProgram()

    #o = OperationsBlock(inLoop=True)
    #print(o.printCode())
    
    # ---- Class Testing ----
    fb = ForLoopBlock()
    print(fb.printCode())
    #ep = Expression()
    #print(ep.printCode())
    print(calledNodes)