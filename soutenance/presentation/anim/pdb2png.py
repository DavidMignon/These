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
#pymol.cmd.show_as('lines','BB')
#PYMOL.CMD.SET_COLOR('MYGRAY',[0.99,0.99,0,67])
pymol.cmd.color('GRAY90','BB')
pymol.cmd.set_view (''' 
     0.779068351,    0.232197896,   -0.582353532,\
     0.624960005,   -0.361361146,    0.691985250,\
    -0.049760174,   -0.903047204,   -0.426640570,\
     0.000000000,    0.000000000,  -33.269054413,\
    29.591394424,   23.935333252,   15.171971321,\
    22.170640945,   44.367477417,  -20.000000000 ''')


pymol.cmd.png("my_image.png")

# Get out!
pymol.cmd.quit()
