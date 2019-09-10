
from enum import Enum
import random
from random_functions import lucky, veryLucky
import type_checking

class FPNumberType(Enum):
    normal = 0
    subnormal = 1
    almost_overflow = 2
    almost_underflow = 3
    zero = 4

# This class gererates random floating-point inputs.
# It considers several cases:
#   (1) Normal number
#   (2) Almost overflow
#   (3) Almost underflow
#   (4) Subnormal (underflow)
#   (5) zero (positive or negative)
class InputGenerator:

    def genInput():
        if type_checking.areRealsDouble():
            return FP64Input.genInput()
        elif type_checking.areRealsSingle():
            return FP32Input.genInput()
        return "undefined"

    def getRealType(number):
        if type_checking.areRealsDouble():
            return FP64Input.getRealType(number)
        elif type_checking.areRealsSingle():
            return FP32Input.getRealType(number)

class FP64Input:
    
    def genInput():
        ret = "0.0";
        x = random.choice(list(FPNumberType))
        if x == FPNumberType.normal:
            n = FP64Input.getNormal()
        elif x == FPNumberType.subnormal:
            n = FP64Input.getSubnormal()
        elif x == FPNumberType.almost_overflow:
            n = FP64Input.getAlmostOverflow()
        elif x == FPNumberType.almost_underflow:
            n = FP64Input.getAlmostUnderflow()
        elif x == FPNumberType.zero:
            n = "+0.0"
            if lucky():
                n = "-0.0"
        else:
            n = ret
        
        return str(n)
    
    def getRealType(number):
        if str(number) == "-0.0" or str(number) == "+0.0":
            return FPNumberType.zero
        exp = int(number.split("E")[1])
        if exp >= -300 and exp <= 300:
            return FPNumberType.normal
        elif exp >= -323 and exp <= -309:
            return FPNumberType.subnormal
        elif exp >= 305 and exp <= 307:
            return FPNumberType.almost_overflow
        elif exp >= -307 and exp <= -305:
            return FPNumberType.almost_underflow
    
    def getNormal():
        exponent = random.randrange(-300, 300)
        return FP64Input.writeNumber(exponent)
    
    def getSubnormal():
        exponent = random.randrange(-323, -309)
        return FP64Input.writeNumber(exponent)
    
    def getAlmostOverflow():
        exponent = random.randrange(305, 307)
        return FP64Input.writeNumber(exponent)
    
    def getAlmostUnderflow():
        exponent = random.randrange(-307, -305)
        return FP64Input.writeNumber(exponent)
    
    def writeNumber(exponent):
        mag = random.uniform(1, 2)
        mag = str(mag)[0:6]
        s = FP64Input.getSign()
        ret = s + mag + "E" + str(exponent)
        return ret
    
    def getSign():
        if random.randrange(2) == 0:
            return "-";
        else:
            return "+";

class FP32Input:
    
    def genInput():
        ret = "0.0";
        x = random.choice(list(FPNumberType))
        if x == FPNumberType.normal:
            n = FP32Input.getNormal()
        elif x == FPNumberType.subnormal:
            n = FP32Input.getSubnormal()
        elif x == FPNumberType.almost_overflow:
            n = FP32Input.getAlmostOverflow()
        elif x == FPNumberType.almost_underflow:
            n = FP32Input.getAlmostUnderflow()
        elif x == FPNumberType.zero:
            n = "+0.0"
            if lucky():
                n = "-0.0"
        else:
            n = ret
        
        return str(n+"f")

    def getRealType(number):
        if str(number) == "-0.0" or str(number) == "+0.0":
            return FPNumberType.zero
        exp = int(number.split("E")[1])
        if exp >= -30 and exp <= 30:
            return FPNumberType.normal
        elif exp >= -44 and exp <= -40:
            return FPNumberType.subnormal
        elif exp >= 34 and exp <= 37:
            return FPNumberType.almost_overflow
        elif exp >= -37 and exp <= -34:
            return FPNumberType.almost_underflow
    
    def getNormal():
        exponent = random.randrange(-30, 30)
        return FP32Input.writeNumber(exponent)
    
    def getSubnormal():
        exponent = random.randrange(-44, -40)
        return FP32Input.writeNumber(exponent)
    
    def getAlmostOverflow():
        exponent = random.randrange(34, 37)
        return FP32Input.writeNumber(exponent)
    
    def getAlmostUnderflow():
        exponent = random.randrange(-37, -34)
        return FP32Input.writeNumber(exponent)
    
    def writeNumber(exponent):
        mag = random.uniform(1, 2)
        mag = str(mag)[0:6]
        s = FP32Input.getSign()
        ret = s + mag + "E" + str(exponent)
        return ret
    
    def getSign():
        if random.randrange(2) == 0:
            return "-";
        else:
            return "+";

if __name__ == "__main__":
    print("In main...")
    n = InputGenerator.genInput()
    print(n)
    print(InputGenerator.getRealType(n))
