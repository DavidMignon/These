#!/usr/bin/env python
#coding=utf-8


import sys
import numpy as np
from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
import matplotlib.pyplot as plt
import matplotlib.gridspec as gs


plt.close('all')


try:
    title       = sys.argv[1]
    result_file = sys.argv[2]
    output_file = sys.argv[3]
    
except:
    print  "usage: \n" + sys.argv[0] + " titre result_file graph_name.png \n"
    sys.exit(2)


fo=open(result_file,"r")

datas=fo.readlines()
size=len(datas) 

idx=0


fig, axs = plt.subplots(size,sharex=True,figsize=(7,10))
gs1 = gs.GridSpec(7,10)
gs1.update(wspace=0,hspace=0)

for line in datas:
    label=line.split()[0]
    data=line.split()[1:]
    axs[idx].grid(True)
    axs[idx].plot(data,color='red')
    axs[idx].yaxis.set_ticks([])
    axs[idx].xaxis.set_ticks([0,5,10,15,20,25,30,35,40])
    axs[idx].set_ylabel(label,fontsize=9)
    idx+=1

axs[size-1].set_xlabel("Iterations")


#fig.subplots_adjust(top=None,wspace=None,hspace=None)

canvas = FigureCanvas(fig)

fig.suptitle(title, fontsize=14)

canvas.print_figure(output_file)
