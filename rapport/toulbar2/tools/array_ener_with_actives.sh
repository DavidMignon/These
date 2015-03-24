#!/bin/bash 

ALGO_LIST=$1
active_nb=$2

PROT_LIST=$3

. ./lib.sh

declare -a TAB
declare -a L
declare -A best_ener
declare -A ener_exists


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
	    best_ener["toulbar2"]=`cut -d " " -f 3 $WORK_DIR/gmec.seq | tail -n 1  `;
	    ener_exists["toulbar2"]="TRUE"
	    BEST_ENER=${best_ener["toulbar2"]}
	else
	    best_ener["toulbar2"]="no";
	    ener_exists["toulbar2"]="FALSE"
	    BEST_ENER=-99999
	fi
	L+=(${best_ener["toulbar2"]})

	
	for p in $ALGO_LIST 
		 
	do
	    
	    if [ -f $WORK_DIR/$p.ener.sort.xz ]
	    then
		best_ener[$p]=`xzcat $WORK_DIR/$p.ener.sort.xz | head -1 | cut -d " " -f 2 `; 
	    elif [ -f $WORK_DIR/$p.ener.sort ]
	    then
		best_ener[$p]=`head -1 $WORK_DIR/$p.ener.sort | cut -d " " -f 2 `;
	    elif [ -f $WORK_DIR/$p.seq.sort ]
	    then
		best_ener[$p]=`head -1 $WORK_DIR/$p.seq.sort | cut -d " " -f 2 `;
	    elif [ -f $WORK_DIR/$p.seq.sort.xz ]
	    then
		best_ener[$p]=` xzcat $WORK_DIR/$p.seq.sort.xz | head -1 | cut -d " " -f 2 `;
	    fi
	    if [ -z ${best_ener[$p]} ]
	    then
		ener_exists[$p]="FALSE"
	    else
		ener_exists[$p]="TRUE"
	    fi
	    
	    if [ ${ener_exists[$p]} == "TRUE"  ]
	    then
		if [ `echo  " ${best_ener[$p]} > $BEST_ENER" | bc -l ` -eq 1 ]
		then
		    BEST_ENER=${best_ener[$p]}
		    echo  BEST_ENER $BEST_ENER
		fi
	    fi
	done
	
	for p in $ALGO_LIST 
	do
	    if [ ${ener_exists[$p]} == "TRUE"  ]
	    then
		DELTA=`echo "${best_ener[$p]} - $BEST_ENER" | bc -l `
		L+=($DELTA)
	    else
		L+=("no")
	    fi
	done
	TAB+=($(tab_line L[@]))
    done
done
print_tab TAB[@]
