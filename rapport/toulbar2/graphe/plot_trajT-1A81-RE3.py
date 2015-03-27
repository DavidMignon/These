#!/bin/bash -vx


# for file proteus log file (verbose mode )

name=$1

PERIOD=`grep -A 1 Swap_Period $name.log | head -2 | grep -v Swap_Period`

grep step $name.log | perl -pe 's/new|step:|temperatures://g '  > $name.tmp

perl -lane "BEGIN{\$step=0}; while(\$F[0]>\$step){ \$step+=$PERIOD ; s/^\d+/\$step/ ; print } " $name.tmp > $name.traj

./plot_trajT.py "${name/-/ }" $name.traj  $name-T_traj.png 

 


