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
    pfam_seed     = sys.argv[4]
    designed_full = sys.argv[5]
    native_full   = sys.argv[6]
    pfam_full     = sys.argv[7]
    output_file   = sys.argv[8]
except:
    print "usage: \n" + sys.argv[0] + " protein designed_seed native_seed pfam_seed designed_full native_full pfam_full graph_name.png \n"
    sys.exit(2)


posi_seed           = np.loadtxt(native_seed,usecols=[0])
native_seed_simil   = np.loadtxt(native_seed,usecols=[2])
designed_seed_simil = np.loadtxt(designed_seed,usecols=[2])
pfam_seed_simil     = np.loadtxt(pfam_seed,usecols=[1])

posi_full           = np.loadtxt(native_full,usecols=[0])
native_full_simil   = np.loadtxt(native_full,usecols=[2])
designed_full_simil = np.loadtxt(designed_full,usecols=[2])
pfam_full_simil     = np.loadtxt(pfam_full,usecols=[1])


fig = Figure()
canvas = FigureCanvas(fig)
ax1 = fig.add_subplot(211)
ax1.set_title(protein)
ax1.set_ylim(-5,20)
ax1.plot(posi_seed,native_seed_simil,label='native vs pfam seed',color="red")
ax1.plot(posi_seed,designed_seed_simil,label='designed vs pfam seed',color="green")
ax1.plot(posi_seed,pfam_seed_simil,label='pfam vs pfam seed',color="black")
ax1.grid(True)
ax1.set_ylabel('similarity score')
ax1.legend(loc=0,prop={'size':10})

xmin, xmax = ax1.xaxis.get_data_interval()
xrange = xmax-xmin
xmax = xmax + 1
xmin = xmin - 1
ax1.set_xlim(xmin, xmax)

ax2 = fig.add_subplot(212)
ax2.set_ylim(-5,20)
ax2.plot(posi_full,native_full_simil,label='native vs pfam full',color="magenta")
ax2.plot(posi_full,designed_full_simil,label='designed vs pfam full',color="blue")
ax2.plot(posi_full,pfam_full_simil,label='pfam vs pfam full',color="grey")
ax2.grid(True)
ax2.set_xlabel('position')
ax2.set_ylabel('similarity score')
ax2.legend(loc=0,prop={'size':10})

ax2.set_xlim(xmin, xmax)

canvas.print_figure(output_file)

