
from enum import Enum
import random
from random_functions import lucky, veryLucky

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

    def genInput(self):
        ret = "0.0";
        x = random.choice(list(FPNumberType))
        if x == FPNumberType.normal:
            n = InputGenerator.getNormal()
            #print("Normal {}".format(n))
        elif x == FPNumberType.subnormal:
            n = InputGenerator.getSubnormal()
            #print("Subnormal {}".format(n))
        elif x == FPNumberType.almost_overflow:
            n = InputGenerator.getAlmostOverflow()
            #print("almost_overflow {}".format(n))
        elif x == FPNumberType.almost_underflow:
            n = InputGenerator.getAlmostUnderflow()
            #print("almost_underflow {}".format(n))
        elif x == FPNumberType.zero:
            n = "+0.0"
            if lucky():
                n = "-0.0"
        else:
            n = ret
        
        return str(n)

    def getNormal():
        exponent = random.randrange(-300, 300)
        return InputGenerator.writeNumber(exponent)
    
    def getSubnormal():
        exponent = random.randrange(-323, -309)
        return InputGenerator.writeNumber(exponent)

    def getAlmostOverflow():
        exponent = random.randrange(305, 307)
        return InputGenerator.writeNumber(exponent)

    def getAlmostUnderflow():
        exponent = random.randrange(-307, -305)
        return InputGenerator.writeNumber(exponent)

    def writeNumber(exponent):
        mag = random.uniform(1, 2)
        mag = str(mag)[0:6]
        s = InputGenerator.getSign()
        ret = s + mag + "E" + str(exponent)
        return ret
        
    def getSign():
        if random.randrange(2) == 0:
            return "-";
        else:
            return "+";

if __name__ == "__main__":
    print("In main...")
    InputGenerator.genInput()
