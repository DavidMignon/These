#!/bin/bash 


. ./lib.sh

declare -a TAB
declare -a L



L=(Protéine)  

for p in ph  p3  p4  p5  p6  p7  p8  p9

do
    L+=(${name[$p]}) 
done

tab_line L[@]


TAB=($(tab_line L[@]))

cd /home/mignon/bioinfo/toulbar2


for prot in *_casa

do
    L=(${prot/_casa/})
    for p in ph  p3  p4  p5  p6  p7  p8  p9
	     
    do
	TIME=`tail -n1 $prot/actives/all/$p.time.log | cut -d " " -f 2 `
	L+=($TIME) 
    done
    TAB+=($(tab_line L[@]))
done

print_tab TAB[@]
