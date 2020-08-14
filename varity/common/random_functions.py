import random
import cfg

# This function return True or False randomly
def lucky():
    return random.randrange(0, 2) == 0
# 1/4 probability of success
def veryLucky():
    return random.randrange(0, 5) == 4

# Chance of generating a math function
def generateMathExpression():
    return random.random() <= cfg.MATH_FUNC_PROBABILITY

