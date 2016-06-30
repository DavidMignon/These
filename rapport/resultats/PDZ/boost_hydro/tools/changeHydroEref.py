#!/usr/bin/env python
import os
import sys
import re
import math


dicHydro = {'LEU':0, 'ALA':0, 'PHE':0, 'THR':0, 'VAL':0, 'MET':0, 'PRO':0, 'ILE':0, 'CYS':0, 'GLY':0}

filin = open(sys.argv[1], 'r')
lines = filin.readlines()

delta =float(sys.argv[2])

for line in lines:
    elem = line.split()
    aaType = elem[0]
    ener = float(elem[1])
    if aaType in dicHydro:
            ener+=delta
    print ('%s %f' %(aaType,ener))

filin.close()
