#!/usr/bin/env python
# -*- noplot -*-
#  a partir de l'exemple du backend agg 

import sys
import numpy as np

import matplotlib.pyplot as plt
from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
from matplotlib.figure import Figure

from matplotlib.legend_handler import HandlerPatch
import matplotlib.patches as mpatches


try:
    protein_name  = sys.argv[1]
    proteus_file  = sys.argv[2]
    native_file   = sys.argv[3]
    pfam_file     = sys.argv[4]
    rosetta_file  = sys.argv[5]
    output_file   = sys.argv[6]
except:
    print "usage: \n" + sys.argv[0] + " protein proteus_file native_file pfam_file rosetta_file graph_name.png \n"

    print protein_name  + "\n"
    print proteus_file  + "\n"
    print native_file   + "\n"
    print pfam_file     + "\n"
    print rosetta_file  + "\n"
    print output_file   + "\n"
    sys.exit(2)



def make_legend_arrow(legend, orig_handle,
                      xdescent, ydescent,
                      width, height, fontsize):
    p = mpatches.FancyArrow(0, 0.5*height, width, 0, length_includes_head=True, head_width=0.75*height )
    return p

proteus_simil   = np.loadtxt(proteus_file,usecols=[1])
native_simil    = np.loadtxt(native_file,usecols=[1])
pfam_simil      = np.loadtxt(pfam_file,usecols=[1])
rosetta_simil   = np.loadtxt(rosetta_file,usecols=[1])

fig = plt.figure()
canvas = FigureCanvas(fig)

ax = fig.add_subplot(111)

weights = 0.04*np.ones_like(proteus_simil)/len(proteus_simil)
#weights = np.ones_like(proteus_simil)/len(proteus_simil)

Y,X=np.histogram(proteus_simil,bins=20,weights=weights)
#Y,X=np.histogram(proteus_simil,bins=20,normed=True)

newx=2*X[0] - X[1]
X=np.insert(X,0,newx)
Y=np.insert(Y,0,0)
Y=np.append(Y,0)

proteus_pfam,=ax.plot(X,Y,linewidth=2,marker='o',color='black')

weights = 0.04*np.ones_like(rosetta_simil)/len(rosetta_simil)
#weights = np.ones_like(rosetta_simil)/len(rosetta_simil)

Y,X=np.histogram(rosetta_simil,bins=20,weights=weights)
#Y,X=np.histogram(rosetta_simil,bins=20,normed=True)

newx=2*X[0] - X[1]
X=np.insert(X,0,newx)
Y=np.insert(Y,0,0)
Y=np.append(Y,0)


rosetta_pfam,=ax.plot(X,Y,linewidth=2,marker='o',color='0.75')


weights = 0.05*np.ones_like(pfam_simil)/len(pfam_simil)
#print weights

Y,X=np.histogram(pfam_simil,bins=20,weights=weights)
#Y,X=np.histogram(pfam_simil,bins=20,normed=True)

newx=2*X[0] - X[1]
X=np.insert(X,0,newx)
Y=np.insert(Y,0,0)
Y=np.append(Y,0)

pfam_pfam,=ax.plot(X,Y,linewidth=2,linestyle='--',marker='o',color='black')


arrow = plt.arrow(native_simil, 0.010, 0, -0.001,color='red',head_width=0.4, head_length=0.0005 )


ax.legend([proteus_pfam,rosetta_pfam,pfam_pfam,arrow], ['Proteus vs pfam seed','Rosetta vs pfam seed ','pfam vs pfam seed','native vs pfam seed'], handler_map={mpatches.FancyArrow : HandlerPatch(patch_func=make_legend_arrow),},loc=2,fontsize=11)

plt.title(protein_name)
plt.xlabel("Similarity score", fontsize=17)
plt.ylabel("Frequency", fontsize=17)
ax.set_xlim(-10, 45)
ax.set_ylim(0, 0.011)
plt.grid()

canvas.print_figure(output_file)
