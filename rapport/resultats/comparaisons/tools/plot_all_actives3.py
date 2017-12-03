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
conv_inv = { 1 : '1CKA' , 2 : '1ABO' , 3 : '1R6J' , 4 : '1G9O', 5 : '2BYG' , 6 : '1BM2'  , 7 : '1O4C' ,     8 : '1M61'  , 9 : '1A81'   }

def base(x, pos):
    return conv_inv[x]


formatter = FuncFormatter(base)                                                                                                                                                        
    
    
fig = Figure()
canvas = FigureCanvas(fig)
ax = fig.add_subplot(111)
ax.set_title(titre)



# H & MC3 & MC43 & RE1 & RE2 & RE5 & RE3 & RE32 & RE33 & RE4 & RE42 \\

proteins = np.genfromtxt(result_file,usecols=(1),dtype=None)


H,MC,RE4a,RE4b,RE8a,RE8b,RE8c = np.loadtxt(result_file,usecols=[2,3,4,5,6,7,8],unpack=True)


line_H,     =ax.plot(proteins,H,color='red',linewidth=4,label="H")
line_MC,    =ax.plot(proteins,MC,color='green',linestyle='dashed',linewidth=4,label="MC")
line_RE4a,  =ax.plot(proteins,RE4a,color='blue',linewidth=2,label="RE4a")
line_RE4b,  =ax.plot(proteins,RE4b,color='blue',linestyle='dashed',linewidth=2,label="RE4b")
line_RE8a, =ax.plot(proteins,RE8a,color='0.6',linestyle='dashed',linewidth=4,label="RE8a")
line_RE8b, =ax.plot(proteins,RE8b,color='black',linewidth=4,label="RE8b")
line_RE8c, =ax.plot(proteins,RE8c,color='0.8',linestyle=':',linewidth=3,label="RE8c")

ax.xaxis.set_ticks([1,2,3,4,5,6,7,8,9])
ax.xaxis.set_major_formatter(formatter)

ax.set_xlim(1, 9)
ax.set_ylim(0, 11)
ax.yaxis.set_ticks([0.,2.,4.,6.,8.,10.])

ax.grid(False)

ax.set_ylabel(u'\u0394'+ 'E (kcal/mol)', fontsize=11)



#ax.set_xlabel("Proteins", fontsize=11)


# Shrink current axis by 10%
box = ax.get_position()
ax.set_position([box.x0, box.y0, box.width * 0.95, box.height])

#red_patch = mpatches.Patch(color='red', label='H test')
#blue_patch = mpatches.Patch(color='blue', label='MC test')
#green_patch = mpatches.Patch(color='green', label='RE test')


# Put a legend to the right of the current axis

ax.legend(loc='center left',fontsize=9,labelspacing=0.2 ,numpoints=1,bbox_to_anchor=(1, 0.5), ncol=1,handles=[line_H,line_MC,line_RE4a,line_RE4b,line_RE8a,line_RE8b,line_RE8c])

canvas.print_figure(output_file)
