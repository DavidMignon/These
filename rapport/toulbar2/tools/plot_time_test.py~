#!/usr/bin/env python
# -*- noplot -*-
#  a partir de l'exemple du backend agg 

import sys
import numpy as np

from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
from matplotlib.figure import Figure
import matplotlib.pyplot as plt

try:
    protein       = sys.argv[1]
    designed_seed = sys.argv[2]
    native_seed   = sys.argv[3]
    designed_full = sys.argv[4]
    native_full   = sys.argv[5]
    output_file   = sys.argv[6]
except:
    print "usage: \n" + sys.argv[0] + " protein designed_seed native_seed designed_full native_full graph_name.png \n" 
    sys.exit(2)


posi_seed           = np.loadtxt(native_seed,usecols=[0])
native_seed_simil   = np.loadtxt(native_seed,usecols=[2])
designed_seed_simil = np.loadtxt(designed_seed,usecols=[2])

posi_full           = np.loadtxt(native_full,usecols=[0])
native_full_simil   = np.loadtxt(native_full,usecols=[2])
designed_full_simil = np.loadtxt(designed_full,usecols=[2])



fig = Figure()
canvas = FigureCanvas(fig)
ax = fig.add_subplot(211)
ax.set_title(protein)

ax.plot(posi_seed,native_seed_simil,label='native vs pfam seed',color="red")
ax.plot(posi_seed,designed_seed_simil,label='designed vs pfam seed',color="blue")
ax.grid(True)
ax.set_ylabel('similarity score')
ax.legend(loc=0)


ax = fig.add_subplot(212)


ax.plot(posi_full,native_full_simil,label='native vs pfam full',color="red")
ax.plot(posi_full,designed_full_simil,label='designed vs pfam full',color="blue")
ax.grid(True)
ax.set_xlabel('position')
ax.set_ylabel('similarity score')
ax.legend(loc=0)


canvas.print_figure(output_file)

