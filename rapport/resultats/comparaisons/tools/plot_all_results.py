#!/usr/bin/env python
#coding=utf-8


#from __future__ import unicode_literals
#import matplotlib as mpl
#mpl.rcParams['text.usetex']=True
#mpl.rcParams['text.latex.unicode']=True


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


conv = {'5':1 , '10': 2,'20': 3, '30': 4}
conv_inv = {1:5,2:10,3:20,4:30}

def base(x, pos):
    return conv_inv[x]


formatter = FuncFormatter(base)                                                                                                                                                        
    
    
fig = Figure()
canvas = FigureCanvas(fig)
#ax = fig.add_subplot(111)
ax = fig.add_axes([0.05,0.15,0.8,0.8])
ax.set_title(titre)

fo=open(result_file,"r")
lignes=fo.readlines()

my_marker=""
my_color='b'
translation1=0
translation2=0

ax.bar(0.6,8,0.8,bottom=-0.2,color='0.9',linewidth=0)
ax.bar(1.6,8,0.8,bottom=-0.2,color='0.9',linewidth=0)
ax.bar(2.6,8,0.8,bottom=-0.2,color='0.9',linewidth=0)
ax.bar(3.6,8,0.8,bottom=-0.2,color='0.9',linewidth=0)



keys=lignes[0].split()[1:] # Récupération des clés en ligne 0
 

for ligne in lignes[1:]:
    data=ligne.split()
    if data[3]=="toulbar2":
        my_marker='o'
        translation1=0.1
    elif data[3]=="H":
        my_marker='s'
        translation1=0        
    elif data[3]=="RE":
        my_marker='^'
        translation1=0.1        
    if data[0]=="H":
        my_color="red"
        translation2=-0.3
    elif data[0]=="MC":
        my_color="blue"
        translation2=0
    elif data[0]=="RE":
        my_color="green"
        translation2=0.2
    
    ax.plot(conv[data[1]]+translation1+translation2,float(data[2]),color=my_color,marker=my_marker)

ax.xaxis.set_ticks([1,2,3,4])
ax.xaxis.set_major_formatter(formatter)
ax.set_xlim(0.5, 4.5)
ax.set_ylim(-0.2, 6)
ax.yaxis.set_ticks([0.,1.,2.,3.,4,5,6])

ax.grid(False)
#ax.set_ylabel(u'')
#ax.set_ylabel(u'\u1D6E5'+'E (kcal/mol)')
ax.set_ylabel(u'\u0394'+ 'E (kcal/mol)', fontsize=11)
#ax.set_ylabel(r"\Delta E(kcal/mol)", fontsize=16)

ax.set_xlabel("number of active positions", fontsize=11)

#ax.tick_params(labeltop='off', labelright='off')
ax.tick_params(axis = 'x', color='0.9')

# Shrink current axis by 10%
box = ax.get_position()
ax.set_position([box.x0, box.y0, box.width * 0.95, box.height])

red_patch = mpatches.Patch(color='red', label='H test')
blue_patch = mpatches.Patch(color='blue', label='MC test')
green_patch = mpatches.Patch(color='green', label='RE test')

circle = mlines.Line2D(range(1), range(1), color="white", marker='o', markerfacecolor="white",label='Best: toulbar2')
square = mlines.Line2D(range(1), range(1), color="white", marker='s',markerfacecolor="white",label='Best: RE')
star = mlines.Line2D(range(1), range(1), color="white", marker='*', markerfacecolor="white",label='Best: H')

# Put a legend to the right of the current axis
ax.legend(loc='center left',fontsize=9,labelspacing=0.2 ,numpoints=1,bbox_to_anchor=(1, 0.5),fancybox=True, shadow=True, ncol=1,handles=[red_patch,blue_patch,green_patch,circle,star,square])


canvas.print_figure(output_file)

