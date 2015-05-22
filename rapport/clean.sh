#!/bin/sh

f=rapport

rm $f.aux
rm $f.bbl
rm $f.blg
rm $f.out
rm $f.log
rm $f.lof
rm $f.lot
rm $f.toc
rm $f.brf
rm $f.pdf

for f in merci dedicace glossaire intro contexte methodes resultats1 resultats2 conc annexe1 annexe2 resume; do
  rm $f.aux
done


rm *flymake*
