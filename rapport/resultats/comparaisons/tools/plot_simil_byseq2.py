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
    designed_RP55 = sys.argv[5]
    native_RP55   = sys.argv[6]
    pfam_RP55     = sys.argv[7]
    output_file   = sys.argv[8]
except:
    print "usage: \n" + sys.argv[0] + " protein designed_seed native_seed pfam_seed designed_RP55 native_RP55 pfam_RP55 graph_name.png \n"
    sys.exit(2)

designed_seed_simil = np.loadtxt(designed_seed,usecols=[1])
native_seed_simil   = np.loadtxt(native_seed,usecols=[1])
pfam_seed_simil     = np.loadtxt(pfam_seed,usecols=[1])
designed_RP55_simil = np.loadtxt(designed_RP55,usecols=[1])
native_RP55_simil   = np.loadtxt(native_RP55,usecols=[1])
pfam_RP55_simil     = np.loadtxt(pfam_RP55,usecols=[1])

fig = plt.figure()
canvas = FigureCanvas(fig)

ax = fig.add_subplot(111)

weights = 0.35*np.ones_like(designed_seed_simil)/len(designed_seed_simil)

Y,X=np.histogram(designed_seed_simil,bins=20,weights=weights)

newx=2*X[0] - X[1]
X=np.insert(X,0,newx)
Y=np.insert(Y,0,0)
Y=np.append(Y,0)

ax.plot(X,Y,label='Rosetta vs pfam seed',linewidth=2,marker='s',color='black')


weights = 0.33*np.ones_like(designed_RP55_simil)/len(designed_RP55_simil)

Y,X=np.histogram(designed_RP55_simil,bins=20,weights=weights)

newx=2*X[0] - X[1]
X=np.insert(X,0,newx)
Y=np.insert(Y,0,0)
Y=np.append(Y,0)


ax.plot(X,Y,label='Rosetta vs pfam RP55',linewidth=2,marker='o',color='0.75')


weights = np.ones_like(pfam_seed_simil)/len(pfam_seed_simil)

Y,X=np.histogram(pfam_seed_simil,bins=20,weights=weights)

newx=2*X[0] - X[1]
X=np.insert(X,0,newx)
Y=np.insert(Y,0,0)
Y=np.append(Y,0)

ax.plot(X,Y,label='pfam vs pfam seed',linewidth=2,linestyle='--',marker='s',color='black')



weights = 0.35*np.ones_like(pfam_RP55_simil)/len(pfam_RP55_simil)
print weights
Y,X=np.histogram(pfam_RP55_simil,bins=20,weights=weights)


newx=2*X[0] - X[1]
X=np.insert(X,0,newx)
Y=np.insert(Y,0,0)
Y=np.append(Y,0)

ax.plot(X,Y,label='pfam vs pfam RP55',linewidth=2,linestyle='--',marker='o',color='0.75')


#plt.axvline(x=native_RP55_simil,color='magenta',linewidth=2,label='native vs pfam RP55')
#plt.axvline(x=native_seed_simil, color='red',linewidth=2,label='native vs pfam seed')

plt.title(protein)
plt.xlabel("Similarity score", fontsize=17)
plt.ylabel("Frequency", fontsize=17)
ax.set_xlim(-20, 50)
plt.grid()

ax.legend(loc=0)
canvas.print_figure(output_file)
