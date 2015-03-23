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
    s2_simil_file    = sys.argv[3]
    s2_ener_file     = sys.argv[4]
    s4_simil_file    = sys.argv[5]
    s4_ener_file     = sys.argv[6]



except:
    print "usage: \n" + sys.argv[0] + " protein_name graph_name.png s2_simil s2_ener s4_simil s4_ener\n" 
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


s2_ener,s2_simil = prepare_data(s2_simil_file,s2_ener_file)
s4_ener,s4_simil = prepare_data(s4_simil_file,s4_ener_file)



fig = Figure()
canvas = FigureCanvas(fig)
ax = fig.add_subplot(211)
ax.set_ylabel('Energy')

ax.plot(s2_simil,s2_ener,color='blue',marker='.',linestyle='none',markersize=3,label='sedano2')


ax.set_title(protein)
ax.grid(True)
ax.legend(loc=0,numpoints=1)

ax = fig.add_subplot(212)

ax.plot(s4_simil,s4_ener,color='red',marker='.',linestyle='none',markersize=3,label='sedano4')

ax.grid(True)
ax.set_xlabel('Similarity score')
ax.set_ylabel('Energy')
ax.legend(loc=0,numpoints=1)
canvas.print_figure(output_file)

