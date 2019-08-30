
from type_checking import getTypeString

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
    
    # --- Real type variables ----------------------------------------------
    
    # generates real variable
    def generateRealID(self, isPointer=False):
    #def generateDoubleID(self, isPointer=False):
        name = self.genID()
        type = getTypeString()       
        if isPointer == True:
            type = type + "*"
            self.pointers.add(name)
        self.varNames[name] = type
        return name
    
    # generates temporal real variable
    def generateTempRealID(self):
        self.tempLastId = self.tempLastId + 1
        name = "tmp_" + str(self.tempLastId)
        type = getTypeString()
        self.tempVarNames[name] = type
        return name
    # ----------------------------------------------------------------------
    
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
