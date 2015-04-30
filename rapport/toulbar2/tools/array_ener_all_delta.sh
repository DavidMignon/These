#!/bin/bash -x


. ./lib.sh

declare -a TAB
declare -a L
declare -A best_ener

algo_list="ph  p3  p4  p5  p6  p7  p8  p82 p83 p9 p11"

cd /home/mignon/bioinfo/toulbar2


for prot in *_casa

do
    for WORK_DIR in $prot/actives/all 
    do
	best_ener=()
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
	    L+=($DELTA)
	    echo   $p DELTA $DELTA $WORK_DIR
	done
	TAB+=($(tab_line L[@]))
    done
done
print_tab TAB[@]