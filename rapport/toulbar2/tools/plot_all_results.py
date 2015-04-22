#!/usr/bin/env python
#coding=utf-8



from __future__ import unicode_literals
import matplotlib as mpl
mpl.rcParams['text.usetex']=True
mpl.rcParams['text.latex.unicode']=True


import sys
import numpy as np
from matplotlib.ticker import FuncFormatter 
from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
from matplotlib.figure import Figure

import matplotlib.patches as mpatches
import matplotlib.pyplot as plt
import matplotlib.lines as mlines

try:
    titre       = sys.argv[1]
    result_file = sys.argv[2]
    output_file = sys.argv[3]
    
except:
    print "usage: \n" + sys.argv[0] + " titre result_file graph_name.png \n" 
    sys.exit(2)


conv = {'0': 1, '1': 2, '5': 3, '10': 4,'20': 5, '30': 6}
conv_inv = {1:0,2:1,3:5,4:10,5:20,6:30}

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

ax.bar(0.6,7.8,0.8,color='0.9',linewidth=0)
ax.bar(1.6,7.8,0.8,color='0.9',linewidth=0)
ax.bar(2.6,7.8,0.8,color='0.9',linewidth=0)
ax.bar(3.6,7.8,0.8,color='0.9',linewidth=0)
ax.bar(4.6,7.8,0.8,color='0.9',linewidth=0)
ax.bar(5.6,7.8,0.8,color='0.9',linewidth=0)



keys=lignes[0].split()[1:] # Récupération des clés en ligne 0
print "keys :",keys
 

for ligne in lignes[1:]:
    data=ligne.split()
    print "data: ",data
    if data[3]=="toulbar2":
        my_marker='o'
        translation1=0.1
    elif data[3]=="H":
        my_marker='*'
        translation1=0        
    elif data[3]=="RE":
        my_marker='s'
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
    print "data[0]",data[0]
    print "data[1]",data[1]
    print "data[2]",data[2]
    print "my_color",my_color    
    print "my_marker",my_marker
    print "trans1",translation1
    print "trans2",translation2
    
#    ax.plot(data[1],data[2],color=my_color,marker=my_marker)
    ax.plot(conv[data[1]]+translation1+translation2,float(data[2]),color=my_color,marker=my_marker)

ax.xaxis.set_ticks([1,2,3,4,5,6])
ax.xaxis.set_major_formatter(formatter)
ax.set_xlim(0.5, 6.5)
ax.set_ylim(0, 7.8)
ax.yaxis.set_ticks([1.,2.,3.,4,5,6,7])

ax.grid(False)
#ax.set_ylabel(u'\u1D6AB')
ax.set_ylabel(r"\Delta E", fontsize=16)

ax.set_xlabel('nombre de positions actives')
ax.legend(loc=0)



#handles, labels = ax.get_legend_handles_labels()
#ax.legend(handles, labels)

#red_patch = mpatches.Patch(color='red', label='The red data')
#fig.legend(handles=[red_patch])

blue_line = mlines.Line2D([], [], color='blue', marker='*',
                          markersize=15, label='Blue stars')
plt.legend(handles=[blue_line])


canvas.print_figure(output_file)

