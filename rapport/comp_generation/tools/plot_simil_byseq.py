#!/usr/bin/env python
# -*- noplot -*-
#  a partir de l'exemple du backend agg 

import sys
import numpy as np

import matplotlib.pyplot as plt
from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
from matplotlib.figure import Figure


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

designed_seed_simil = np.loadtxt(designed_seed,usecols=[1])
native_seed_simil   = np.loadtxt(native_seed,usecols=[1])
designed_full_simil = np.loadtxt(designed_full,usecols=[1])
native_full_simil   = np.loadtxt(native_full,usecols=[1])

fig = plt.figure()
canvas = FigureCanvas(fig)

ax = fig.add_subplot(111)


plt.hist(designed_seed_simil,bins=200, color='g',normed=True,histtype='step',label='designed vs pfam seed')
plt.axvline(x=native_seed_simil, color='r',label='native vs pfam seed')

plt.hist(designed_full_simil,bins=200, color='b',normed=True,histtype='step',label='designed vs pfam full')
plt.axvline(x=native_full_simil,color='black',label='native vs pfam full')

plt.title(protein)
plt.xlabel("Similarity score")
plt.ylabel("Frequency")
plt.grid()

xmin, xmax = ax.xaxis.get_data_interval()
xrange = xmax-xmin
xmax = xmax + xrange * 0.30

ax.xaxis.set_view_interval(xmin, xmax)

ax.legend(loc=1,prop={'size':9})
canvas.print_png(output_file)
