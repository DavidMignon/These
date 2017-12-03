#!/usr/bin/env python
# -*- noplot -*-
#  a partir de l'exemple du backend agg 

import sys
import numpy as np

import matplotlib.pyplot as plt
from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
from matplotlib.figure import Figure


try:
    protein       = sys.argv[1]
    designed_seed = sys.argv[2]
    native_seed   = sys.argv[3]
    pfam_seed     = sys.argv[4]
    designed_full = sys.argv[5]
    native_full   = sys.argv[6]
    pfam_full     = sys.argv[7]
    output_file   = sys.argv[8]
except:
    print "usage: \n" + sys.argv[0] + " protein designed_seed native_seed pfam_seed designed_full native_full pfam_full graph_name.png \n"
    sys.exit(2)

designed_seed_simil = np.loadtxt(designed_seed,usecols=[1])
native_seed_simil   = np.loadtxt(native_seed,usecols=[1])
pfam_seed_simil     = np.loadtxt(pfam_seed,usecols=[1])
designed_full_simil = np.loadtxt(designed_full,usecols=[1])
native_full_simil   = np.loadtxt(native_full,usecols=[1])
pfam_full_simil     = np.loadtxt(pfam_full,usecols=[1])

fig = plt.figure()
canvas = FigureCanvas(fig)

ax = fig.add_subplot(111)

weights = 0.6*np.ones_like(designed_seed_simil)/len(designed_seed_simil)

Y,X=np.histogram(designed_seed_simil,bins=20,weights=weights)

newx=2*X[0] - X[1]
X=np.insert(X,0,newx)
Y=np.insert(Y,0,0)
Y=np.append(Y,0)

ax.plot(X,Y,label='Proteus vs Pfam seed',linewidth=2,marker='s',markersize=3,color='black')


weights = 0.6*np.ones_like(designed_full_simil)/len(designed_full_simil)

Y,X=np.histogram(designed_full_simil,bins=20,weights=weights)

newx=2*X[0] - X[1]
X=np.insert(X,0,newx)
Y=np.insert(Y,0,0)
Y=np.append(Y,0)


ax.plot(X,Y,label='Proteus vs Pfam full',linestyle='-',linewidth=2,marker='o',markersize=3,color='0.75')


weights = 1.2*np.ones_like(pfam_seed_simil)/len(pfam_seed_simil)

Y,X=np.histogram(pfam_seed_simil,bins=20,weights=weights)

newx=2*X[0] - X[1]
X=np.insert(X,0,newx)
Y=np.insert(Y,0,0)
Y=np.append(Y,0)

ax.plot(X,Y,label='Pfam vs Pfam seed',linewidth=2,linestyle=':',marker='s',markersize=3,color='black')



weights = 0.4*np.ones_like(pfam_full_simil)/len(pfam_full_simil)
print weights
Y,X=np.histogram(pfam_full_simil,bins=20,weights=weights)


newx=2*X[0] - X[1]
X=np.insert(X,0,newx)
Y=np.insert(Y,0,0)
Y=np.append(Y,0)

ax.plot(X,Y,label='Pfam vs Pfam full',linewidth=2,linestyle=':',marker='o',markersize=3,color='0.75')



plt.title(protein)
#plt.xlabel("Similarity score", fontsize=17)
#plt.ylabel("Frequence", fontsize=17)
ax.set_xlim(-20, 30)
ax.set_ylim(-0, 0.35)
plt.grid()

ax.legend(loc=0)
canvas.print_figure(output_file)
