import cfg
from enum import Enum

class RealType(Enum):
    fp32 = 0
    fp64 = 1
    fp32_pointer = 3
    fp64_pointer = 4
    undefined = 5

# Get the real type defined in the configuration
def getRealType():
    if cfg.REAL_TYPE == "float":
        return RealType.fp32
    elif cfg.REAL_TYPE == "double":
        return RealType.fp64
    
    return RealType.undefined

def areRealsDouble():
    return cfg.REAL_TYPE == "double"

def areRealsSingle():
    return cfg.REAL_TYPE == "float"

def getTypeString():
    return cfg.REAL_TYPE

def isTypeReal(t):
    return t == cfg.REAL_TYPE

def isTypeRealPointer(t):
    return t == (cfg.REAL_TYPE+"*")

def isTypeInt(t):
    return t == "int"

