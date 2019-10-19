import random

# This function return True or False randomly
def lucky():
    return random.randrange(0, 2) == 0
# 1/4 probability of success
def veryLucky():
    return random.randrange(0, 5) == 4
