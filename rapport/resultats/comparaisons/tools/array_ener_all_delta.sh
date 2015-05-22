#!/bin/bash 


. ./lib.sh

declare -a TAB
declare -a L
declare -A best_ener

algo_list="ph  p3  p4  p5  p6  p9 p7 p112 p8  p82 p83 "

cd /home/mignon/bioinfo/toulbar2


# header

for p in $algo_list

do
    L+=(${name[$p]}) 
done

TAB+=($(tab_line L[@]))    


for prot in *_casa

do
    WORK_DIR=$prot/actives/all 
    best_ener=()
    L=()
    BEST_ENER=-99999
    
    for p in $algo_list
	     
    do
	if [ -f $WORK_DIR/$p.ener.sort.xz ]
	then
	    best_ener[$p]=`xzcat $WORK_DIR/$p.ener.sort.xz | head -1 | cut -d " " -f 2 `; 
	elif [ -f $WORK_DIR/$p.ener.sort ]
	then
	    best_ener[$p]=`head -1 $WORK_DIR/$p.ener.sort | cut -d " " -f 2 `;
	elif [ -f $WORK_DIR/$p.seq.sort ]
	then
	    best_ener[$p]=`head -1 $WORK_DIR/$p.seq.sort | cut -d " " -f 3 `;
	elif [ -f $WORK_DIR/$p.seq.sort.xz ]
	then
	    best_ener[$p]=` xzcat $WORK_DIR/$p.seq.sort.xz | head -1 | cut -d " " -f 3 `;
	fi
	if [ `echo  " ${best_ener[$p]} > $BEST_ENER" | bc -l ` -eq 1 ]
	then
	    BEST_ENER=${best_ener[$p]}
	fi
    done
    for p in $algo_list 
    do
	DELTA=`echo "${best_ener[$p]} - $BEST_ENER" | bc -l `
	BE_SHORT=$(perl -M'POSIX qw/floor/' -e  " print floor $DELTA" ) 
	L+=($BE_SHORT) 
    done
    TAB+=($(tab_line L[@]))
done
print_tab TAB[@]
