#!/usr/bin/env python
# -*- noplot -*-
#  a partir de l'exemple du backend agg 

import sys
import numpy as np

from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
from matplotlib.figure import Figure


try:
    protein    = sys.argv[1]
    T_file  = sys.argv[2]
    output_file= sys.argv[3]

except:
    print "usage: \n" + sys.argv[0] + " protein_name T_file graph_name.png \n" 
    sys.exit(2)



traj = np.loadtxt(T_file,usecols=[0])
traj = traj /1000
w1   = np.loadtxt(T_file,usecols=[1])
w2   = np.loadtxt(T_file,usecols=[2])
w3   = np.loadtxt(T_file,usecols=[3])
w4   = np.loadtxt(T_file,usecols=[4])

fig = Figure()
canvas = FigureCanvas(fig)
ax = fig.add_subplot(111)

ax.plot(traj,w1,label='w1')
ax.plot(traj,w2,label='w2')
ax.plot(traj,w3,label='w3')
ax.plot(traj,w4,label='w4')

ax.set_title(protein)
#ax.xaxis.set_ticks([20,40,60,80,100])
ax.set_yscale('log')
ax.yaxis.set_ticks([0.01,0.1,1,10])
ax.set_ylim(0.005,20)
ax.grid(True)
ax.set_xlabel('steps (kilo)')
ax.set_ylabel('Temperature')
ax.legend(loc=4)
canvas.print_figure(output_file)

