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

weights = np.ones_like(designed_seed_simil)/len(designed_seed_simil)
(n1, bins1, patches1) = plt.hist(designed_seed_simil,bins=10, color='green',histtype='step',weights=weights,linewidth=2,label='designed vs pfam seed')
weights = np.ones_like(designed_full_simil)/len(designed_full_simil)

(n2, bins2, patches2) = plt.hist(designed_full_simil,bins=10, color='blue',histtype='step',weights=weights,linewidth=2,label='designed vs pfam full')

weights = np.ones_like(pfam_seed_simil)/len(pfam_seed_simil)

(n3, bins3, patches3) = plt.hist(pfam_seed_simil,bins=30, color='black',histtype='step',weights=weights,linewidth=2,label='pfam vs pfam seed')

weights = np.ones_like(pfam_full_simil)/len(pfam_full_simil)

(n4, bins4, patches4) = plt.hist(pfam_full_simil,bins=50, color='grey',histtype='step',weights=weights,linewidth=2,label='pfam vs pfam full')


plt.axvline(x=native_full_simil,color='magenta',linewidth=2,label='native vs pfam full')
plt.axvline(x=native_seed_simil, color='red',linewidth=2,label='native vs pfam seed')

plt.title(protein)
plt.xlabel("Similarity score")
plt.ylabel("Frequency")
plt.grid()

xmin, xmax = ax.xaxis.get_data_interval()
xrange = xmax-xmin
xmax = xmax + xrange * 0.1

#ymax = max(np.amax(n1),np.amax(n2),np.amax(n3),np.amax(n4)) * 0.4
ymax = 0.2


ax.set_xlim(xmin, xmax)
ax.set_ylim(0,ymax)

#ax.xaxis.set_view_interval(xmin, xmax)
#ax.yaxis.set_view_interval(0, ymax)

ax.legend(loc=0,prop={'size':9})
canvas.print_png(output_file)