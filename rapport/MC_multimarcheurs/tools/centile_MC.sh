#!/bin/bash

prot=$1
p=$2

if [ -f $prot/$p/$prot.mc.seq.sort.bz2 ]
    then
	bzcat $prot/$p/$prot.mc.seq.sort.bz2 | head -99000 | perl -lane 'print $F[1] unless $.%1000' | sort -gr >  $prot/$p/centiles.sort  ; 
    else
	head -99000 $prot/$p/$prot.mc.seq.sort | perl -lane 'print $F[1] unless $.%1000' | sort -gr > $prot/$p/centiles.sort ;	
    fi
done  
    