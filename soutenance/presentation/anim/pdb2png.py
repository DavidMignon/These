#!/usr/bin/env python
# -*- noplot -*-
# from https://github.com/ssalentin/pymol-animations/blob/master/tutorials/basics/*.py #

import __main__
__main__.pymol_argv = [ 'pymol', '-qc'] # Quiet and no GUI

import sys, time, os
import pymol

pymol.finish_launching()

##
# Read User Input
spath = os.path.abspath(sys.argv[1])
sname = spath.split('/')[-1].split('.')[0]

# Load Structures

pymol.cmd.load(spath, sname)
pymol.cmd.disable("all")
pymol.cmd.enable(sname)
pymol.cmd.show_as('sticks',sname)
pymol.cmd.zoom( sname,buffer=2.0,state=0, complete=1)
pymol.cmd.bg_color(color="white")
pymol.cmd.select('bb', 'name c+o+n+ca')
pymol.cmd.show_as('lines','BB')
#PYMOL.CMD.SET_COLOR('MYGRAY',[0.99,0.99,0,67])
pymol.cmd.color('GRAY90','BB')
pymol.cmd.set_view('''
     0.592790246,    0.508775711,   -0.624296784,\
     0.784792244,   -0.190873161,    0.589633703,\
     0.180830300,   -0.839473367,   -0.512431860,\
     0.000000000,    0.000000000,  -46.831863403,\
    30.447391510,   24.353721619,   14.624580383,\
    36.922599792,   56.741127014,  -20.000000000 ''')


pymol.cmd.png("my_image.png")

# Get out!
pymol.cmd.quit()
