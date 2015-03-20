#!/bin/bash



if [ -z $3 ]
then
    perl -ne "BEGIN{open(F2, \"$2\" )}; { print ((\$_+<F2>)/2) ; print \"\n\" }" $1

else
    perl -ne "BEGIN{open(F2, \"$2\" );open(F3, \"$3\" );}; { print ((\$_+<F2>+<F3>)/3) ; print \"\n\" }" $1
fi