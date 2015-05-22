#!/usr/bin/env python



import matplotlib.pyplot as plt


x = [1, 2, 3, 4]
y = [1, 4, 9, 6]

z = [5, 1, 1, 1]
labels = ['Frogs', 'Hogs', 'Bogs', 'Slogs']

fig = plt.figure()
ax = fig.add_axes([0,0,1,1])

ax.plot(x, y, 'ro')
ax.plot(x, z, 'bo')
# You can specify a rotation for the tick labels in degrees or with keywords.
#ax.xticks(x, labels, rotation='vertical')
# Pad margins so that markers don't get clipped by the axes
#ax.margins(0.2)
# Tweak spacing to prevent clipping of tick-labels
#ax.subplots_adjust(bottom=0.15)
plt.show()
