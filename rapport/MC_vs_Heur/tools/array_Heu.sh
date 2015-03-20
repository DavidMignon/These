#!/bin/bash


cd /data/mignon/Tuff95/optER_old/2.2

for prot in 1ABO 1CKA 1BM2 1M61 1O4C 1G9O 1R6J ;
    do echo $prot \& | tr '\n' ' ' ;
    head -100000 $prot/$prot-18.seq.sort | perl -lane  'BEGIN{$s=0}; $s+=$F[1]; END{printf "%3.2f ", $s/$.}' | tr '\n' ' ';	
    echo "\\";
done
