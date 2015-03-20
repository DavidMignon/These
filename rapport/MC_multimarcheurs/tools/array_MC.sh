#!/bin/bash
for prot in 1ABO 1CKA 1BM2 1M61 1O4C 1G9O 1R6J ;
    do echo $prot | tr '\n' ' ' ;
    for i in `seq 1 12 ` ; 
    do echo \& | tr '\n' ' ' ;
    if [ -f $prot/p$i/$prot.mc.seq.sort.bz2 ]
    then
    bzcat $prot/p$i/$prot.mc.seq.sort.bz2 | head -100000 | perl -lane 'BEGIN{$s=0}; $s+=$F[1]; END{printf "%3.2f ", $s/$.}' | tr '\n' ' ' ; 
    else
    head -100000 $prot/p$i/$prot.mc.seq.sort | perl -lane  'BEGIN{$s=0}; $s+=$F[1]; END{printf "%3.2f ", $s/$.}' | tr '\n' ' ';	
    fi
    done ; 
    echo "\\";
    done
