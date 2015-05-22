#!/usr/bin/env python



import matplotlib.pyplot as plt
import matplotlib.patches as mpatches


x = [1, 2, 3, 4]
y = [1, 4, 9, 6]

z = [5, 1, 1, 1]
labels = ['Frogs', 'Hogs', 'Bogs', 'Slogs']

plt.plot(x, y, 'ro')
plt.plot(x, z, 'bo')
# You can specify a rotation for the tick labels in degrees or with keywords.
plt.xticks(x, labels, rotation='vertical')
# Pad margins so that markers don't get clipped by the axes
plt.margins(0.2)
# Tweak spacing to prevent clipping of tick-labels
plt.subplots_adjust(bottom=0.15)


red_patch = mpatches.Patch(color='red', label='The red data')
plt.legend(handles=[red_patch])

plt.show()
