#!/bin/bash 


. ./lib.sh

declare -a TAB
declare -a L



L=(Protéine)  

algo_list="ph  p3  p4  p5  p6  p7  p8  p82 p83 p9 p11"


for p in $algo_list

do
    L+=(${name[$p]}) 
done

tab_line L[@]


TAB=($(tab_line L[@]))

cd /home/mignon/bioinfo/toulbar2


for prot in *_casa

do
    L=(${prot/_casa/})
    WORK_DIR=$prot/actives/all
    
    for p in $algo_list
	     
    do
    if [ -f $WORK_DIR/$p.ener.sort.xz ]
    then
	BEST_ENER=`xzcat $WORK_DIR/$p.ener.sort.xz | head -1 | cut -d " " -f 2 `; 
    elif [ -f $WORK_DIR/$p.ener.sort ]
    then
	BEST_ENER=`head -1 $WORK_DIR/$p.ener.sort | cut -d " " -f 2 `;
    elif [ -f $WORK_DIR/$p.seq.sort ]
    then
	BEST_ENER=`head -1 $WORK_DIR/$p.seq.sort | cut -d " " -f 3 `;
    elif [ -f $WORK_DIR/$p.seq.sort.xz ]
    then
	BEST_ENER=` xzcat $WORK_DIR/$p.seq.sort.xz | head -1 | cut -d " " -f 3 `;	
    else
	echo !!!!! $PWD $prot/actives/all/$p.ener.sort
    fi
    
    BE_SHORT=$(perl -M'POSIX qw/floor/' -e  " print floor $BEST_ENER" ) 
    L+=($BE_SHORT) 
    done
    TAB+=($(tab_line L[@]))
done

print_tab TAB[@]
