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
    proteus2_file = sys.argv[3]
    pfam_file     = sys.argv[4]
    rosetta_file  = sys.argv[5]
    output_file   = sys.argv[6]
    proteusw      = sys.argv[7]
    proteus2w     = sys.argv[8]
    pfamw         = sys.argv[9]
    rosettaw      = sys.argv[10]
    xlim_inf      = sys.argv[11]
    xlim_sup      = sys.argv[12]
except:
    print "usage: \n" + sys.argv[0] + " protein_name proteus_file proteus2_file pfam_file rosetta_file graph_name.png proteusw proteus2w pfamw rosettaw xlim_inf xlim_sup \n"

    print protein_name  + "\n"
    print proteus_file  + "\n"
    print proteus2_file + "\n"
    print pfam_file     + "\n"
    print rosetta_file  + "\n"
    print output_file   + "\n"
    print proteusw      + "\n"
    print proteus2w     + "\n"
    print pfamw         + "\n"
    print rosettaw      + "\n"
    print xlim_inf      + "\n"
    print xlim_sup      + "\n"    
    sys.exit(2)



def make_legend_arrow(legend, orig_handle,
                      xdescent, ydescent,
                      width, height, fontsize):
    p = mpatches.FancyArrow(0, 0.5*height, width, 0, length_includes_head=True, head_width=0.75*height )
    return p


proteus_simil    = np.loadtxt(proteus_file,usecols=[1])
proteus2_simil   = np.loadtxt(proteus2_file,usecols=[1])
pfam_simil       = np.loadtxt(pfam_file,usecols=[1])
rosetta_simil    = np.loadtxt(rosetta_file,usecols=[1])

proteus_w = float(proteusw)
proteus2_w = float(proteus2w)
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

proteus_pfam,=ax.plot(X,Y,linewidth=4,linestyle='--',marker='o',color='black')


weights = proteus2_w*np.ones_like(proteus2_simil)/len(proteus2_simil)
Y,X=np.histogram(proteus2_simil,bins=20,weights=weights)


newx=2*X[0] - X[1]
X=np.insert(X,0,newx)
Y=np.insert(Y,0,0)
Y=np.append(Y,0)

proteus2_pfam,=ax.plot(X,Y,linewidth=4,marker='o',color='black')



weights = rosetta_w*np.ones_like(rosetta_simil)/len(rosetta_simil)
Y,X=np.histogram(rosetta_simil,bins=20,weights=weights)


newx=2*X[0] - X[1]
X=np.insert(X,0,newx)
Y=np.insert(Y,0,0)
Y=np.append(Y,0)


rosetta_pfam,=ax.plot(X,Y,linewidth=4,linestyle='--',marker='o',color='0.75')


weights = pfam_w*np.ones_like(pfam_simil)/len(pfam_simil)
Y,X=np.histogram(pfam_simil,bins=20,weights=weights)


newx=2*X[0] - X[1]
X=np.insert(X,0,newx)
Y=np.insert(Y,0,0)
Y=np.append(Y,0)

pfam_pfam,=ax.plot(X,Y,linewidth=4,linestyle='-',marker='o',color='0.75')




#ax.legend([rosetta_pfam,pfam_pfam,arrow], ['Rosetta','Pfam','Native'], handler_map={mpatches.FancyArrow : HandlerPatch(patch_func=make_legend_arrow),},loc=0,fontsize=33)


#ax.legend([proteus_pfam,proteus2_pfam,rosetta_pfam,pfam_pfam], ['NEA','FDB ','Rosetta','Pfam'],loc=0,fontsize=25)

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