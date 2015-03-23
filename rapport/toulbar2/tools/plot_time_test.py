#!/usr/bin/env python
# -*- noplot -*-
#  a partir de l'exemple du backend agg 

import sys
import numpy as np

from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
from matplotlib.figure import Figure
import matplotlib.pyplot as plt

try:
    protein       = sys.argv[1]
    data_file     = sys.argv[2]
    output_file   = sys.argv[3]
except:
    print "usage: \n" + sys.argv[0] + " protein data_file graph_name.png \n" 
    sys.exit(2)


data           = np.loadtxt(data_file,usecols=[0])
posi           = np.loadtxt(data_file,usecols=[1])


fig = Figure()
canvas = FigureCanvas(fig)
ax = fig.add_subplot(211)
ax.set_title(protein)

ax.plot(posi,data,label='native vs pfam seed',color="red")
ax.grid(True)
ax.set_ylabel('similarity score')
ax.legend(loc=0)


canvas.print_figure(output_file)

