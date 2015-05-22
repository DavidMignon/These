#!/bin/bash 


PROTO_LIST=$1


. ./lib.sh

declare -a TAB
declare -a L



L=(Protéine)  

for p in toulbar2 $PROTO_LIST

do
    L+=(${name[$p]}) 
done


TAB=($(tab_line L[@]))

print_tab TAB[@]

cd /home/mignon/bioinfo/toulbar2


for prot in *_casa

do
    L=(${prot/_casa/})
    WORK_DIR=$prot/actives/0
    
    if [ -f $WORK_DIR/gmec.seq ]
    then
	GMEC=`cut -d " " -f 3 $WORK_DIR/gmec.seq | tail -n 1  `;
    else
	GMEC="none" 
    fi
    L+=($GMEC) 
	
    for p in $PROTO_LIST 
	     
    do
	
    if [ -f $WORK_DIR/$p.ener.sort.xz ]
    then
	BEST_ENER=`xzcat $WORK_DIR/$p.ener.sort.xz | head -1 | cut -d " " -f 2 `; 
    elif [ -f $WORK_DIR/$p.ener.sort ]
    then
	BEST_ENER=`head -1 $WORK_DIR/$p.ener.sort | cut -d " " -f 2 `;
    else
	BEST_ENER="none" 
    fi
    
    if [ $GMEC == "none" ]
    then
	L+=($BEST_ENER) 
    else
	DELTA=`echo $GMEC - $BEST_ENER | bc -l `
	L+=($DELTA) 
    fi
    
    done
    TAB+=($(tab_line L[@]))
done

print_tab TAB[@]
