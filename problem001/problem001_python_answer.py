#!/usr/bin/env python

def problem001():

    a = 0
    b = []
    
    for tmp in range(1,1000):
      if tmp % 3 == 0 or tmp % 5 ==0 :
        a += tmp
    
    return b.append(a)

if __name__ == "__main__":

    problem001()

