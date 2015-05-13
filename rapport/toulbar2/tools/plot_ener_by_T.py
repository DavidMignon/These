#!/usr/bin/env python
# -*- noplot -*-
#  a partir de l'exemple du backend agg 

import sys
import numpy as np

import matplotlib.pyplot as plt
from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
from matplotlib.figure import Figure


try:
    title          = sys.argv[1]
    ener_file1     = sys.argv[2]
    ener_file2     = sys.argv[3]
    ener_file3     = sys.argv[4]
    ener_file4     = sys.argv[5]
    ener_file5     = sys.argv[6]
    ener_file6     = sys.argv[7]
    ener_file7     = sys.argv[8]
    ener_file8     = sys.argv[9]

    output_file    = sys.argv[10]
except:
    print "usage: \n" + sys.argv[0] + " protein energy file(s) graph_name.png \n" 
    sys.exit(2)

ener1 = np.loadtxt(ener_file1,usecols=[1])
T1    = np.loadtxt(ener_file1,usecols=[2])

ener2 = np.loadtxt(ener_file2,usecols=[1])
T2    = np.loadtxt(ener_file2,usecols=[2])

ener3 = np.loadtxt(ener_file3,usecols=[1])
T3    = np.loadtxt(ener_file3,usecols=[2])

ener4 = np.loadtxt(ener_file4,usecols=[1])
T4    = np.loadtxt(ener_file4,usecols=[2])

ener5 = np.loadtxt(ener_file5,usecols=[1])
T5    = np.loadtxt(ener_file5,usecols=[2])

ener6 = np.loadtxt(ener_file6,usecols=[1])
T6    = np.loadtxt(ener_file6,usecols=[2])

ener7 = np.loadtxt(ener_file7,usecols=[1])
T7    = np.loadtxt(ener_file7,usecols=[2])

ener8 = np.loadtxt(ener_file8,usecols=[1])
T8    = np.loadtxt(ener_file8,usecols=[2])


label1 = 'T=' + str(T1[0]) 
label2 = 'T=' + str(T2[0]) 
label3 = 'T=' + str(T3[0]) 
label4 = 'T=' + str(T4[0]) 
label5 = 'T=' + str(T5[0]) 
label6 = 'T=' + str(T6[0]) 
label7 = 'T=' + str(T7[0]) 
label8 = 'T=' + str(T8[0]) 


fig = plt.figure()
canvas = FigureCanvas(fig)

ax = fig.add_subplot(111)


plt.hist(ener1,bins=1000, color='green',normed=True,histtype='step',label=label1)
plt.hist(ener2,bins=1000, color='red',normed=True,histtype='step',label=label2)
plt.hist(ener3,bins=1000, color='blue',normed=True,histtype='step',label=label3)
plt.hist(ener4,bins=1000, color='black',normed=True,histtype='step',label=label4)
plt.hist(ener5,bins=1000, color='magenta',normed=True,histtype='step',label=label5)
plt.hist(ener6,bins=1000, color='green',normed=True,histtype='step',label=label6)
plt.hist(ener7,bins=1000, color='red',normed=True,histtype='step',label=label7)
plt.hist(ener8,bins=1000, color='black',normed=True,histtype='step',label=label8)


plt.title(title)
plt.xlabel("Energy")
plt.ylabel("Frequency")
plt.grid()

xmin, xmax = ax.xaxis.get_data_interval()
ax.set_xlim(-1000, xmax+50)
ax.set_ylim(0,0.1)


ax.legend(loc=2,prop={'size':12})
canvas.print_png(output_file)
