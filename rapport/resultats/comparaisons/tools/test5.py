#!/usr/bin/env python
# -*- noplot -*-
#  a partir de l'exemple du backend agg 


import numpy as np
import pylab as p

data=np.array(np.random.rand(1000))
y,binEdges=np.histogram(data,bins=100)
bincenters = 0.5*(binEdges[1:]+binEdges[:-1])
p.plot(bincenters,y,'-')
p.show()
