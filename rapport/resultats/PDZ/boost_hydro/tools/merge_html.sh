#!/bin/bash -xve


TOOLS=/home/mignon/bioinfo/PDZ/boost_hydro/tools/

PATH=$PATH:$TOOLS

BGcolors=("" "#900c20" "#e90c03" "#ed841c" "#edc91c" "#e3ed1c") 

Fcolors=( "" "ffffff" "ffffff" "ffffff" "#000000" "#000000")


WORKDIR=$1

cd $WORKDIR

cd  1

setcolor.sh proteus.uniq.html ${Fcolors[1]} ${BGcolors[1]} > color.html
setfont_face.sh color.html > final.html	   
for i in  2 3 4 5
do
    cd ../$i
    merge_align.pl proteus.uniq.html ../$((i-1))/color.html > merge.html
    setcolor.sh merge.html ${Fcolors[$i]} ${BGcolors[$i]} > color.html
    setfont_face.sh color.html > final.html	   
done
    
    



