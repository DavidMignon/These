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
    output_file   = sys.argv[3]
except:
    print "usage: \n" + sys.argv[0] + " protein designed_seed graph_name.png \n"
    sys.exit(2)

designed_seed_simil = np.loadtxt(designed_seed,usecols=[1])

fig = plt.figure()
canvas = FigureCanvas(fig)

ax = fig.add_subplot(111)

weights = np.ones_like(designed_seed_simil)/len(designed_seed_simil)


(n1, bins1, patches1) = plt.hist(designed_seed_simil,bins=200, color='green',normed=False,histtype='step',label='designed vs pfam seed',weights=weights)



plt.title(protein)
plt.xlabel("Similarity score")
plt.ylabel("Frequency")
plt.grid()

xmin, xmax = ax.xaxis.get_data_interval()
xrange = xmax-xmin
xmax = xmax + xrange * 0.1

ymax = np.amax(n1) * 1.1


ax.xaxis.set_view_interval(xmin, xmax)
ax.yaxis.set_view_interval(0, ymax)

ax.legend(loc=1,prop={'size':9})
canvas.print_png(output_file)
