#!/bin/bash



mc=$1
heur=$2


min=`sort -g $mc $heur | head -1`
max=`sort -gr $mc $heur | head -1`


perl -lane "\$d= \$F[0] - $min ; print ((\$d)/($max - $min))" $mc > ${mc}_n

perl -lane "\$d= \$F[0] - $min ; print ((\$d)/($max - $min))" $heur > ${heur}_n






    
