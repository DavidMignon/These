#!/bin/bash 

ALGO_LIST=$1
active_nb=$2

PROT_LIST=$3

. ./lib.sh

declare -a TAB
declare -a L



L=(Protéine)  

for p in toulbar2 $ALGO_LIST

do
    L+=(${name[$p]}) 
done


TAB=($(tab_line L[@]))

print_tab TAB[@]

cd /home/mignon/bioinfo/toulbar2


for prot in $PROT_LIST

do
    i=0
    for WORK_DIR in $prot/actives/$active_nb/* 
    do
	((i++))
	select=${prot/_casa/}"_s"$i 
	L=($select )
	
	if [ -f $WORK_DIR/gmec.seq ]
	then
	    GMEC=`cut -d " " -f 3 $WORK_DIR/gmec.seq | tail -n 1  `;
	    GMEC_exists="TRUE" 
	else
	    GMEC_exists="FALSE"
	    GMEC="no" 
	fi
	L+=($GMEC) 

	
	for p in $ALGO_LIST 
		 
	do
	    
	    if [ -f $WORK_DIR/$p.ener.sort.xz ]
	    then
		BEST_ENER=`xzcat $WORK_DIR/$p.ener.sort.xz | head -1 | cut -d " " -f 2 `; 
		BEST_ENER_exists="TRUE" 
	    elif [ -f $WORK_DIR/$p.ener.sort ]
	    then
		BEST_ENER=`head -1 $WORK_DIR/$p.ener.sort | cut -d " " -f 2 `;
		BEST_ENER_exists="TRUE" 
	    else
		BEST_ENER_exists="FALSE"
		BEST_ENER="no" 
	    fi
	    
	    if [ $GMEC_exists == "TRUE"  ] &&  [ $BEST_ENER_exists == "TRUE" ]
	    then
		DELTA=`echo $GMEC - $BEST_ENER | bc -l `
		L+=($DELTA) 
	    else
		L+=($BEST_ENER) 				
	    fi
 
	done
	TAB+=($(tab_line L[@]))
    done
done
print_tab TAB[@]
