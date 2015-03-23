#!/usr/bin/env python
# -*- noplot -*-
#  a partir de l'exemple du backend agg 

import sys
import numpy as np

from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
from matplotlib.figure import Figure


try:
    protein     = sys.argv[1]
    output_file = sys.argv[2]
    ph_simil_file    = sys.argv[3]
    ph_ener_file     = sys.argv[4]
    p3_simil_file    = sys.argv[5]
    p3_ener_file     = sys.argv[6]
    p4_simil_file    = sys.argv[7]
    p4_ener_file     = sys.argv[8]


except:
    print "usage: \n" + sys.argv[0] + " protein_name graph_name.png ph_simil ph_ener p3_simil p3_ener p4_simil p4_ener\n" 
    sys.exit(2)




#--------------------------------------------------------------
def prepare_data(simil_file, ener_file):

    simil_col       = np.loadtxt(simil_file,usecols=[1])
    ener_data       = np.loadtxt(ener_file,usecols=[3])
    ener_idx        = np.loadtxt(ener_file,usecols=[0])

    simil_data=[]

    for idx in range(0,len(ener_idx)):

        simil_data.append(simil_col[ener_idx[idx]-1])

    return (ener_data,simil_data)
#----------------------------------------------


ph_ener,ph_simil = prepare_data(ph_simil_file,ph_ener_file)
p3_ener,p3_simil = prepare_data(p3_simil_file,p3_ener_file)
p4_ener,p4_simil = prepare_data(p4_simil_file,p4_ener_file)


fig = Figure()
canvas = FigureCanvas(fig)
ax = fig.add_subplot(111)


#plot(x, y, color='green', linestyle='dashed', marker='o',
#     markerfacecolor='blue', markersize=12).

ax.plot(ph_simil,ph_ener,color='blue',marker='.',linestyle='none',markersize=3,label='heur')


ax.plot(p4_simil,p4_ener,color='red',marker='.',linestyle='none',markersize=3,label='mc (p4)')

ax.plot(p3_simil,p3_ener,color='green',marker='.',linestyle='none',markersize=3,label='mc (p3)')

ax.set_title(protein)
#ax.xaxis.set_ticks([20,40,60,80,100])
#ax.yaxis.set_ticks([1.,3.,6.])
ax.grid(True)
ax.set_xlabel('Similarity score')
ax.set_ylabel('Energy')
ax.legend(loc=0,numpoints=1)
canvas.print_figure(output_file)

