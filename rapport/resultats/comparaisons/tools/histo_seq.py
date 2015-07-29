#!/usr/bin/env python
# -*- noplot -*-
#  a partir de l'exemple du backend agg 

import sys
import numpy as np

import matplotlib.pyplot as plt
from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
from matplotlib.figure import Figure


try:
    title          = sys.argv[1]
    analyse_file   = sys.argv[2]
    output_file    = sys.argv[3]
except:
    print "usage: \n" + sys.argv[0] + " title analyse_file graph_name.png \n" 
    sys.exit(2)

ener_avg      = np.loadtxt(analyse_file,usecols=[2])
ener_min      = np.loadtxt(analyse_file,usecols=[3])
ener_max      = np.loadtxt(analyse_file,usecols=[4])
ener_weights   = np.loadtxt(analyse_file,usecols=[1])

fig = plt.figure()
canvas = FigureCanvas(fig)

ax = fig.add_subplot(111)

weights=None
plt.hist(ener_avg,weights=ener_weights,bins=60, color='black',normed=True,histtype='step',label="avg")
plt.hist(ener_max,weights=ener_weights,bins=60, color='blue',normed=True,histtype='step',label="max")
plt.hist(ener_min,weights=ener_weights,bins=60, color='red',normed=True,histtype='step',label="min")

plt.title(title)
plt.xlabel("Energy")
plt.ylabel("Frequency")
plt.grid()

xmin, xmax = ax.xaxis.get_data_interval()
#ax.set_xlim(-1000, xmax+50)
#ax.set_ylim(0,0.1)


ax.legend(loc=2,prop={'size':12})
canvas.print_png(output_file)
