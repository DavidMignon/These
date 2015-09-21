#!/usr/bin/env python
# -*- noplot -*-
#  a partir de l'exemple du backend agg 

import sys
import numpy as np

from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
from matplotlib.figure import Figure


try:
    protein     = sys.argv[1]
    RE_data   = sys.argv[2]
    toulbar2_data   = sys.argv[3]
    output_file = sys.argv[4]

except:
    print "usage: \n" + sys.argv[0] + " protein_name RE_data  toulba2_data graph_name.png \n"
    sys.exit(2)


entropies1 = np.loadtxt(RE_data,usecols=[0])
ener1      = np.loadtxt(RE_data,usecols=[2])
seq_nb1    = np.loadtxt(RE_data,usecols=[3])

entropies2 = np.loadtxt(toulbar2_data,usecols=[0])
ener2      = np.loadtxt(toulbar2_data,usecols=[2])
seq_nb2    = np.loadtxt(toulbar2_data,usecols=[3])

fig = Figure()
canvas = FigureCanvas(fig)
ax = fig.add_subplot(111)

#t1 =np.linspace(0.1,6,len(entropies1))
#t2 =np.linspace(0.1,2,len(entropies2))

ax.plot(ener1,entropies1, color='red',marker='o' ,label='RE')
ax.plot(ener2,entropies2, color='blue',marker='o', label='toulbar2 subopt')
ax.set_title(protein)
#ax.xaxis.set_ticks([20,40,60,80,100])
#ax.yaxis.set_ticks([1.,3.,6.])
ax.grid(True)
ax.set_xlabel('energy')
ax.set_ylabel('entropy')

ax2 = ax.twinx()

#ax2.plot(ener1,seq_nb1, color='red',marker='-' ,label='RE')
ax2.plot(ener1,seq_nb1, color='red',marker='.' ,label='RE')
ax2.plot(ener2,seq_nb2, color='blue',marker='.', label='toulbar2 subopt')
ax2.set_ylabel('sequence number')
ax2.set_yscale('log')



# Shrink current axis by 10%
box = ax.get_position()
ax.set_position([box.x0, box.y0, box.width * 0.80, box.height])

box = ax2.get_position()
ax2.set_position([box.x0, box.y0, box.width * 0.80, box.height])


# Put a legend to the right of the current axis
ax.legend(loc='center left',fontsize=9,labelspacing=0.2 ,numpoints=1,bbox_to_anchor=(1.07, 0.90),fancybox=True, shadow=True, ncol=1, title='Entropy')

ax2.legend(loc='center left',fontsize=9,labelspacing=0.2 ,numpoints=1,bbox_to_anchor=(1.06, 0.74),fancybox=True, shadow=True, ncol=1, title='Sequence number')


canvas.print_figure(output_file)
