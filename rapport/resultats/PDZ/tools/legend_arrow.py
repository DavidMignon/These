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
    output_file   = sys.argv[1]
except:
    print "usage: \n" + sys.argv[0] + " graph_name.png \n"

    print output_file   + "\n"
    sys.exit(2)





def make_legend_arrow(legend, orig_handle,
                      xdescent, ydescent,
                      width, height, fontsize):
    p = mpatches.FancyArrow(0, 0.5*height, width, 0, length_includes_head=True, head_width=0.75*height )
    return p

fig = plt.figure(figsize=(10,6))
canvas = FigureCanvas(fig)
arrow = plt.arrow(0,0, 0.5, 0.6, 'dummy', label='My label', )
plt.legend([arrow], ['My label'], handler_map={mpatches.FancyArrow : HandlerPatch(patch_func=make_legend_arrow),
                    })



canvas.print_figure(output_file)
