#!/usr/bin/env python
#coding=utf-8


import sys
import numpy as np
from matplotlib.ticker import FuncFormatter 
from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
from matplotlib.figure import Figure
import matplotlib.lines as mlines


import matplotlib.patches as mpatches
import matplotlib.pyplot as plt


try:
    titre       = sys.argv[1]
    result_file = sys.argv[2]
    output_file = sys.argv[3]
    
except:
    print  "usage: \n" + sys.argv[0] + " titre result_file graph_name.png \n"  
    sys.exit(2)

conv = {'1A81' : 1 , '1ABO' : 2 , '1BM2' : 3 , '1CKA' : 4 ,'1G9O' : 5 , '1M61' : 6 , '1O4C' : 7 , '1R6J' : 8 ,'2BYG' : 9 }
conv_inv = { 1 : '1CKA' , 2 : '1ABO' , 3 : '1R6J' , 4 : '1G9O', 5 : '2BYG' , 6 : '1BM2'  , 7 : '1O4C' , 8 : '1A81'  ,     9 : '1M61'  }

def base(x, pos):
    return conv_inv[x]


formatter = FuncFormatter(base)                                                                                                                                                        
    
    
fig = Figure()
canvas = FigureCanvas(fig)
ax = fig.add_subplot(111)
ax.set_title(titre)



# H & MC3 & MC43 & RE1 & RE2 & RE5 & RE3 & RE32 & RE33 & RE4 & RE42 \\

proteins = np.genfromtxt(result_file,usecols=(1),dtype=None)


H,MCa,MCb,RE4a,RE4b,RE4c,RE8a1,RE8a2,RE8b1,RE8b2,RE8b3 = np.loadtxt(result_file,usecols=[2,3,4,5,6,7,8,9,11,12],unpack=True)

ax.plot(proteins,H,color='black',marker='o')
ax.plot(proteins,MCa,color='blue',marker='o')
ax.plot(proteins,MCb,color='green',marker='o')
ax.plot(proteins,RE4a,color='cyan',marker='o')
ax.plot(proteins,RE4b,color='magenta',marker='o')
ax.plot(proteins,RE4c,color='yellow',marker='o')
ax.plot(proteins,RE8a1,color='black',marker='o')
ax.plot(proteins,RE8a2,color='white',marker='o')
ax.plot(proteins,RE8b1,color='0.7',marker='o')
ax.plot(proteins,RE8b2,color='black',marker='o')
ax.plot(proteins,RE8b3,color='burlywood',marker='o')


ax.xaxis.set_ticks([1,2,3,4,5,6,7,8,9])
ax.xaxis.set_major_formatter(formatter)
ax.set_xlim(0, 10)
ax.set_ylim(-2, 30)
ax.yaxis.set_ticks([0.,4.,8.,12.,16,20,24,28])

ax.grid(False)

ax.set_ylabel(u'\u0394'+ 'E (kcal/mol)', fontsize=11)


ax.set_xlabel("Proteins", fontsize=11)


# Shrink current axis by 10%
box = ax.get_position()
ax.set_position([box.x0, box.y0, box.width * 0.95, box.height])

red_patch = mpatches.Patch(color='red', label='H test')
blue_patch = mpatches.Patch(color='blue', label='MC test')
green_patch = mpatches.Patch(color='green', label='RE test')


# Put a legend to the right of the current axis
ax.legend(loc='center left',fontsize=9,labelspacing=0.2 ,numpoints=1,bbox_to_anchor=(1, 0.5),fancybox=True, shadow=True, ncol=1,handles=[red_patch,blue_patch,green_patch])


canvas.print_figure(output_file)

