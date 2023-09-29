import os
import sys
import argparse
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

import type_checking
from random_functions import lucky, veryLucky

from enum import Enum
import random

class FPNumberType(Enum):
    normal = 0
    zero = 4
    
# Defines classes of FP numerical numbers
class NumericalType(Enum):
    very_small = 0
    small = 1
    large = 2
    very_large = 3

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

    # ---- Get Specific Classes of Numbers -----
    def getNormalSmall():
        exponent = random.randrange(-306, 1)
        return FP64Input.writeNumber(exponent)
    
    def getNormalLarge():
        exponent = random.randrange(1, 155) # +308/2 = 154
        return FP64Input.writeNumber(exponent)
    
    def getNormalVeryLarge():
        exponent = random.randrange(155, 306)
        return FP64Input.writeNumber(exponent)
        
    def getAnyNumericalValue():
        x = random.choice(list(NumericalType))
        if x == NumericalType.very_small:
            return FP64Input.getSubnormal()
        if x == NumericalType.small:
            return FP64Input.getNormalSmall()
        if x == NumericalType.large:
            return FP64Input.getNormalLarge()
        if x == NumericalType.very_large:
            return FP64Input.getNormalVeryLarge()
        # otherwise
        return 0.0

    # ---- Get Random Numbers -----
    def genInput():
        ret = "0.0";
        x = random.choice(list(FPNumberType))
        if x == FPNumberType.normal:
            n = FP64Input.getNormal()
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
        number = number[:-1] # remove f
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
    parser = argparse.ArgumentParser(description='Generate floating-point numbers.')

    parser.add_argument('-n', '--num', dest='N', action='store',
                        help='print list of N numbers (default: 1 number)')
                        
    parser.add_argument('-s', '--sort', dest='s', action='store_true',
                        help='sort numbers (default: True)')
    
    group = parser.add_mutually_exclusive_group()
    group.add_argument('--any', dest='t', action='store_const', const=1, help='any number')
    group.add_argument('--very_small', dest='t', action='store_const', const=2, help='very small numbers')
    group.add_argument('--small', dest='t', action='store_const', const=3, help='small numbers')
    group.add_argument('--large', dest='t', action='store_const', const=4, help='large numbers')
    group.add_argument('--very_large', dest='t', action='store_const', const=5, help='very large numbers')
    
    args = parser.parse_args()
    
    num = 1
    if (args.N != None):
        num = int(args.N)
    if (args.t == None):
        args.t = 1
        
    l = []
    for i in range(num):
        if args.t == 1:
            l.append(FP64Input.getAnyNumericalValue())
        elif args.t == 2:
            l.append(FP64Input.getSubnormal())
        elif args.t == 3:
            l.append(FP64Input.getNormalSmall())
        elif args.t == 4:
            l.append(FP64Input.getNormalLarge())
        elif args.t == 5:
            l.append(FP64Input.getNormalVeryLarge())
    
    if (args.s):
        l.sort(key = float)
    print(" ".join(l))

    #print("In main...")
    #n = InputGenerator.genInput()
    #print(n)
    #print(InputGenerator.getRealType(n))
    #print("very small normal", FP64Input.getSubnormal())
    #print("small normal", FP64Input.getNormalSmall())
    #print("large normal", FP64Input.getNormalLarge())
    #print("very large normal", FP64Input.getNormalVeryLarge())
