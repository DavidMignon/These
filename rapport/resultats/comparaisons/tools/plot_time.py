#!/usr/bin/env python
# -*- noplot -*-
#  a partir de l'exemple du backend agg 

import sys
import numpy as np

from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
from matplotlib.figure import Figure
import matplotlib.pyplot as plt

try:
    titre        = sys.argv[1]
    toulbar2      = sys.argv[2]
    H             = sys.argv[3]
    MC            = sys.argv[4]
    RE            = sys.argv[5]
    output_file   = sys.argv[6]
except:
    print "usage: \n" + sys.argv[0] + " titre toulbar2_data H_data MC_data RE_data graph_name.png \n" 
    sys.exit(2)


posi_toulbar2   = np.loadtxt(toulbar2,usecols=[0])
time_toulbar2   = np.loadtxt(toulbar2,usecols=[1])

posi_H          = np.loadtxt(H,usecols=[0])
time_H          = np.loadtxt(H,usecols=[1])

posi_MC         = np.loadtxt(MC,usecols=[0])
time_MC         = np.loadtxt(MC,usecols=[1])

posi_RE    = np.loadtxt(RE,usecols=[0])
time_RE    = np.loadtxt(RE,usecols=[1])


fig = Figure()
canvas = FigureCanvas(fig)
ax = fig.add_subplot(111)
ax.set_title(titre)




ax.plot(posi_RE,time_RE,label='REMC',color="green",linestyle='None',marker='o',markersize='15')
ax.plot(posi_MC,time_MC,label='Monte-Carlo',color="black",linestyle='None',marker='o',markersize='10')
ax.plot(posi_H,time_H,label='MSD',color="blue",linestyle='None',marker='o',markersize='6')
ax.plot(posi_toulbar2,time_toulbar2,label='CFN',color="red",linestyle='None',marker='o',markersize='3')
ax.grid(True)
ax.set_ylabel('temps CPU en seconde')
ax.set_xlabel('nombre de positions actives')
ax.legend(loc=0)


canvas.print_figure(output_file)

