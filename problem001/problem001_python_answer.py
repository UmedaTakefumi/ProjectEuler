#!/usr/bin/env python

def problem001():

    a = int(0)
    b = []
    
    for tmp in range(int(1),int(1000)):
      if tmp % int(3) == int(0) or tmp % int(5) == int(0) :
        a += tmp
    
    b.append(a)
    return b

if __name__ == "__main__":

    print(problem001())

