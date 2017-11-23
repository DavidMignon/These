#!/usr/bin/env python
# -*- noplot -*-
# from https://github.com/ssalentin/pymol-animations/blob/master/tutorials/basics/*.py #

from pymol import *


pdb_name=sys.argv[1]
png_name=sys.argv[2]

# The next line is essential to prevent any threading errors. Call this function before using any PyMOl methods!
pymol.finish_launching()
cmd.set('ray_trace_frames', 1)  # Should the frames be ray-traced? If yes, rendering will take longer, but look nicer.
cmd.viewport(1600, 1600) # Choose the desired resolution for the movie here (in pixels).




cmd.load(pdb_name,pdb_name)
#cmd.png(output.png, int width=0, int height=0, float dpi=-1, int ray=0, int quiet=0)
#pymol.cmd.disable("all")
#pymol.cmd.enable(pdb_name)
cmd.show_as("sticks", pdb_name)
cmd.zoom(pdb_name)
cmd.ray()
cmd.png(png_name)

cmd.quit()


