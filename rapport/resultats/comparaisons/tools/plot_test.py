#!/usr/bin/env python
# -*- noplot -*-
#  a partir de l'exemple du backend agg 

import sys
import numpy as np

import matplotlib.pyplot as plt
from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
from matplotlib.figure import Figure

try:
    output_file = sys.argv[1]

except:
    print  "usage: \n" + sys.argv[0] + " graph_name.png \n"
    sys.exit(2)


fig = plt.figure()
canvas = FigureCanvas(fig)

ax = fig.add_subplot(111)

plt.title("test")
canvas.print_figure(output_file)
