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
    percent_file1   = sys.argv[3]
    percent_file2   = sys.argv[4]

except:
    print "usage: \n" + sys.argv[0] + " protein_name graph_name.png percent_file1 percent_file2\n"
    sys.exit(2)




percent_list1 = np.loadtxt(percent_file1)
percent_list2 = np.loadtxt(percent_file2)

fig = Figure()
canvas = FigureCanvas(fig)
ax = fig.add_subplot(111)

t =range(1,len(percent_list1)+1)
ax.plot(t,percent_list1,label='1CKA 3')
ax.plot(t,percent_list2,label='1CKA 5')
ax.set_title(protein)
ax.xaxis.set_ticks([20,40,60,80,100])
#ax.yaxis.set_ticks([1.,3.,6.])
ax.grid(True)
ax.set_xlabel('percentiles')
ax.set_ylabel('energy')
ax.legend(loc=4)
canvas.print_figure(output_file)

