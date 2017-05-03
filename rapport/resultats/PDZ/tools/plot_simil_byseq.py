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
    proteusw      = sys.argv[7]
    pfamw         = sys.argv[8]
    rosettaw      = sys.argv[9]
    xlim_inf      = sys.argv[10]
    xlim_sup      = sys.argv[11]
except:
    print "usage: \n" + sys.argv[0] + " protein proteus_file native_file pfam_file rosetta_file graph_name.png \n"

    print protein_name  + "\n"
    print proteus_file  + "\n"
    print native_file   + "\n"
    print pfam_file     + "\n"
    print rosetta_file  + "\n"
    print output_file   + "\n"
    print proteusw      + "\n"
    print pfamw       + "\n"
    print rosettaw    + "\n"
    print xlim_inf   + "\n"
    print xlim_sup   + "\n"    
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

proteus_w = float(proteusw)
pfam_w    = float(pfamw)
rosetta_w = float(rosettaw)

xlim_i=int(xlim_inf)
xlim_s=int(xlim_sup)


fig=plt.figure(figsize=(10,6),dpi=150)

canvas = FigureCanvas(fig)

ax = fig.add_subplot(111)

weights = proteus_w*np.ones_like(proteus_simil)/len(proteus_simil)
Y,X=np.histogram(proteus_simil,bins=20,weights=weights)


newx=2*X[0] - X[1]
X=np.insert(X,0,newx)
Y=np.insert(Y,0,0)
Y=np.append(Y,0)

#proteus_pfam,=ax.plot(X,Y,linewidth=2,marker='o',color='black')

weights = rosetta_w*np.ones_like(rosetta_simil)/len(rosetta_simil)
Y,X=np.histogram(rosetta_simil,bins=20,weights=weights)


newx=2*X[0] - X[1]
X=np.insert(X,0,newx)
Y=np.insert(Y,0,0)
Y=np.append(Y,0)


rosetta_pfam,=ax.plot(X,Y,linewidth=4,linestyle='--',marker='*',color='0.65')


weights = pfam_w*np.ones_like(pfam_simil)/len(pfam_simil)
Y,X=np.histogram(pfam_simil,bins=20,weights=weights)


newx=2*X[0] - X[1]
X=np.insert(X,0,newx)
Y=np.insert(Y,0,0)
Y=np.append(Y,0)

pfam_pfam,=ax.plot(X,Y,linewidth=2,linestyle='-',marker='o',color='0.65')


arrow = plt.arrow(native_simil, 7, 0, -0.8,color='black',head_width=0.8, head_length=0.2 ,linewidth=2)


#ax.legend([rosetta_pfam,pfam_pfam,arrow], ['Rosetta','Pfam','Native'], handler_map={mpatches.FancyArrow : HandlerPatch(patch_func=make_legend_arrow),},loc=0,fontsize=33)


#ax.legend([proteus_pfam,rosetta_pfam,pfam_pfam,arrow], ['Proteus ','Rosetta','Pfam','Native'], handler_map={mpatches.FancyArrow : HandlerPatch(patch_func=make_legend_arrow),},loc=0,fontsize=25)

#ax.legend([proteus_pfam,rosetta_pfam], ['Proteus ','Rosetta'], handler_map={mpatches.FancyArrow : HandlerPatch(patch_func=make_legend_arrow),},loc=9,fontsize=21)

plt.title(protein_name,fontsize=30)


#ax.text(-8,6,protein_name, fontsize=35)

#plt.tick_params(axis='both', which='major', labelsize=10)
#plt.tick_params(axis='both', which='minor', labelsize=8)
plt.xticks(fontsize = 20)
plt.yticks(fontsize = 20)

plt.xlabel("Similarity score", fontsize=28)
plt.ylabel("Frequency", fontsize=28)

ax.set_xlim(xlim_i,xlim_s)
ax.set_ylim(0, 10)
plt.grid()
fig.tight_layout()
canvas.print_figure(output_file)
