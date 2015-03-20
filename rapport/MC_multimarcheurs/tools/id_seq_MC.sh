#!/bin/bash
for prot in 1ABO 1CKA 1BM2 1M61 1O4C 1G9O 1R6J ;
    do echo $prot | tr '\n' ' ' ;
    for i in `seq 1 6 ` ; 
    do echo \& | tr '\n' ' ' ;

	grep -v \# $prot/p${i}_250/designed_vs_native.byseq;dat | perl -lane  '$s+=$F[1]; END{printf "%3.2f ", $s/$.}'    | tr '\n' ' ';	

    done ; 
    echo "\\";
    done
