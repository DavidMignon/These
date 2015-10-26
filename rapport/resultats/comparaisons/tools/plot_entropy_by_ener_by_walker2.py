#!/usr/bin/env python
# -*- noplot -*-
#  a partir de l'exemple du backend agg 

import sys
import numpy as np

from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
from matplotlib.figure import Figure


try:
    protein      = sys.argv[1]
    RE_T1_data   = sys.argv[2]
    RE_T2_data   = sys.argv[3]
    RE_T3_data   = sys.argv[4]
    RE_T4_data   = sys.argv[5]
    RE_T5_data   = sys.argv[6]
    toulbar2_data   = sys.argv[7]
    output_file  = sys.argv[8]

except:
    print "usage: \n" + sys.argv[0] + " protein_name RE_T1_data  RE_T2_data RE_T3_data RE_T4_data RE_T5_data toulbar2_data graph_name.png \n"
    sys.exit(2)


entropies1 = np.loadtxt(RE_T1_data,usecols=[0])
ener1      = np.loadtxt(RE_T1_data,usecols=[2])

entropies2 = np.loadtxt(RE_T2_data,usecols=[0])
ener2      = np.loadtxt(RE_T2_data,usecols=[2])

entropies3 = np.loadtxt(RE_T3_data,usecols=[0])
ener3      = np.loadtxt(RE_T3_data,usecols=[2])

entropies4 = np.loadtxt(RE_T4_data,usecols=[0])
ener4      = np.loadtxt(RE_T4_data,usecols=[2])

entropies5 = np.loadtxt(RE_T5_data,usecols=[0])
ener5      = np.loadtxt(RE_T5_data,usecols=[2])

entropiesT = np.loadtxt(toulbar2_data,usecols=[0])
enerT      = np.loadtxt(toulbar2_data,usecols=[2])



fig = Figure()
canvas = FigureCanvas(fig)
ax = fig.add_subplot(111)

#t1 =np.linspace(0.1,6,len(entropies1))
#t2 =np.linspace(0.1,2,len(entropies2))


ax.plot(ener1,entropies1, color='gray'  ,marker='o' , label="T=0.888")
ax.plot(ener2,entropies2, color='magenta',marker='o' , label="T=0.592")
ax.plot(ener3,entropies3, color='green'  ,marker='o' , label="T=0.395")
ax.plot(ener4,entropies4, color='red'    ,marker='o' , label="T=0.263")
ax.plot(ener5,entropies5, color='black'  ,marker='o' , label="T=0.175")
ax.plot(enerT,entropiesT, color='blue'   ,marker='o' , label="toulbar2 subopt")


ax.set_title(protein)
#ax.xaxis.set_ticks([20,40,60,80,100])
#ax.yaxis.set_ticks([1.,3.,6.])
ax.grid(True)
ax.set_xlabel('energy')
ax.set_ylabel('entropy')


# Shrink current axis by 10%
box = ax.get_position()
ax.set_position([box.x0, box.y0, box.width * 0.80, box.height])

# Put a legend to the right of the current axis
ax.legend(loc='center left',fontsize=9,labelspacing=0.2 ,numpoints=1,bbox_to_anchor=(1, 0.5),fancybox=True, shadow=True, ncol=1, title='Entropy')


canvas.print_figure(output_file)
