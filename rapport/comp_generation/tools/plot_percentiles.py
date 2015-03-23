#!/usr/bin/env python
# -*- noplot -*-
#  a partir de l'exemple du backend agg 

import sys
import numpy as np

from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
from matplotlib.figure import Figure


try:
    protein    = sys.argv[1]
    output_file= sys.argv[2]
    heur_file  = sys.argv[3]
    mc_p3_file    = sys.argv[4]
    mc_p4_file    = sys.argv[5]

except:
    print "usage: \n" + sys.argv[0] + " protein_name graph_name.png data_heur data_mc_p3 data_mc_p4\n" 
    sys.exit(2)




heur_data = np.loadtxt(heur_file)
mc_p3_data   = np.loadtxt(mc_p3_file)
mc_p4_data   = np.loadtxt(mc_p4_file)

fig = Figure()
canvas = FigureCanvas(fig)
ax = fig.add_subplot(111)

t =range(1,len(heur_data)+1)
ax.plot(t,heur_data,label='heur')
t =range(1,len(mc_p3_data)+1)
ax.plot(t,mc_p3_data,label='mc (p3)')
t =range(1,len(mc_p4_data)+1)
ax.plot(t,mc_p4_data,label='mc (p4)')
ax.set_title(protein)
ax.xaxis.set_ticks([20,40,60,80,100])
#ax.yaxis.set_ticks([1.,3.,6.])
ax.grid(True)
ax.set_xlabel('percentiles')
ax.set_ylabel('energy')
ax.legend(loc=4)
canvas.print_figure(output_file)

