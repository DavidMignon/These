#!/usr/bin/env python
#coding=utf-8


import sys
import numpy as np
from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
from matplotlib.figure import Figure
import matplotlib.pyplot as plt




plt.close('all')


try:
    titre       = sys.argv[1]
    result_file = sys.argv[2]
    output_file = sys.argv[3]
    idx         = int(sys.argv[4])
    
except:
    print  "usage: \n" + sys.argv[0] + " titre result_file graph_name.png line_index\n"
    sys.exit(2)


fo=open(result_file,"r")

data_array=fo.readlines()
size=len(data_array)

print size

fig = Figure()
ax = fig.add_subplot(511)
plt.setp(ax.get_yticklabels(), visible=False)
plt.setp(ax.get_xticklabels(), visible=False)

plt.locator_params(axis='y',nbins=2)#to specify number of ticks on both or any single a

canvas = FigureCanvas(fig)

data=data_array[idx].split()
#ax.yaxis.set_ticks([0.,0.1,0.2])
#ax.xaxis.set_ticks([0.,10,20])
ax.grid(True)
ax.plot(data[1:],color='red')
#


#ax.set_ylabel("Frequence", fontsize=11)


#axs[size-1].set_xlabel("Iterations", fontsize=11)

canvas.print_figure(output_file)
