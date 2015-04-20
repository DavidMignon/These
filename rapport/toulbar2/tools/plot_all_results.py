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
#import matplotlib.pyplot as plt

try:
    titre       = sys.argv[1]
    result_file = sys.argv[2]
    output_file = sys.argv[3]
    
except:
    print "usage: \n" + sys.argv[0] + " titre result_file graph_name.png \n" 
    sys.exit(2)




def base(x, pos):
    if x==1:
        return 0 
    elif x==2:
        return 1
    elif x==3:
        return 5
    elif x==4:
        return 10
    elif x==5:
        return 20
    elif x==6:
        return 30


formatter = FuncFormatter(base)                                                                                                                                                        
    
    
fig = Figure()
canvas = FigureCanvas(fig)
ax = fig.add_subplot(111)
ax.set_title(titre)

fo=open("file.txt","r")
lignes=fo.readlines()

my_marker=""
my_color='b'

keys=lignes[0].split()[1:] # Récupération des clés en ligne 0
print "keys :",keys
 

for ligne in lignes[1:]:
    data=ligne.split()
    print "data: ",data
    if data[3]!="toulbar2":
        my_marker='*'
    else:
        my_marker='o'
        
    if data[0]!="H":
        my_color="red"
    elif data[0]!="MC":
        color="blue"
    elif data[0]!="RE":
        color="black"
    print "data[1]",data[1]
    print "data[2]",data[2]
    print "my_color",my_color    
    print "my_marker",my_marker    
#    ax.plot(data[1],data[2],color=my_color,marker=my_marker)
    ax.plot(int(data[1]),float(data[2]),color=my_color,marker=my_marker)

ax.xaxis.set_ticks([1,2,3,4,5,6])
ax.xaxis.set_major_formatter(formatter)
ax.set_xlim(0.5, 6.5)

ax.yaxis.set_ticks([1.,2.,3.])

ax.grid(False)
#ax.set_ylabel('delta E')
ax.set_ylabel(r'\Delta', fontsize=16)

ax.set_xlabel('nombre de positions actives')
ax.legend(loc=0)


canvas.print_figure(output_file)

