#!/usr/bin/env python
# listes des positions exposees et actives
# David Mignon d'apres confMC.py de  Xingyu CHEN
import os
import sys
import re
import cPickle as p

mypath = sys.argv[1] 

# dictionary : active or inactive
actfile = file('%s/dat/activedic.dat'%(mypath))
actdic = p.load(actfile)
print len(actdic)


# dictionary : buried of exposed
surffile = file('%s/dat/surfdic.dat'%(mypath))
surfdic = p.load(surffile)
#print sorted(actdic)
#print len(surfdic)

filout=open("%s/dat/posi_exposed.dat"%(mypath), 'w')
for pos in actdic:
  posi = int(pos)
  if (surfdic[pos] == "e"):
       filout.write('%i\n'%(posi))
      
filout.close()
print "-------------------------END of confMC globalconf "
