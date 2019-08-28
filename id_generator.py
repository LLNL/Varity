

class IdGenerator():
    __instance = None
    
    # ---- singleton accesor ------
    @staticmethod 
    def get(): # gets instance
        """ Static access method. """
        if IdGenerator.__instance == None:
            IdGenerator()
        return IdGenerator.__instance
    
    def __init__(self):
        """ Virtually private constructor. """
        if IdGenerator.__instance != None:
            raise Exception("This class is a singleton!")
        else:
            IdGenerator.__instance = self
            self.varNames = {}
            self.lastId = 0
            self.pointers = set({})
            # Only used locally in functions
            self.tempVarNames = {}
            self.tempLastId = 0
    # ---- singleton accesor ------
    
    def genID(self):
        self.lastId = self.lastId + 1
        name = "var_" + str(self.lastId)
        return name
    
    # --- Double type variables ----------------------------------------------
    # generates double variable
    def generateDoubleID(self, isPointer=False):
        name = self.genID()
        if isPointer == True:
            self.varNames[name] = "double*"
            self.pointers.add(name)
        else:
            self.varNames[name] = "double"
        return name
    
    # generates temporal double variable
    def generateTempDoubleID(self):
        self.tempLastId = self.tempLastId + 1
        name = "tmp_" + str(self.tempLastId)
        self.tempVarNames[name] = "double"
        return name
    
    # generate int variable
    def generateIntID(self):
        name = self.genID()
        self.varNames[name] = "int"
        return name
    
    # returns a list    
    def printAllVars(self):
        ret = []
        for k in self.varNames.keys():
            ret.append(self.varNames[k] + " " + k)
        return ret
    
    def printAllTypes(self):
        ret = []
        for k in self.varNames.keys():
            ret.append(self.varNames[k])
        return ret
    
    def getVarsList(self):
        return self.varNames
    
    def clear(self):
        self.varNames.clear()
        self.lastId = 0
