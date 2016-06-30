#!/bin/bash -xe
# Computational Protein Design
# David Mignon

EREF_E=$1
EREF_B=$2
POSI_EXPOSED=$3


TOOLS=~/bioinfo/PDZ/tools
REF_CONF=~/bioinfo/PDZ/boost_hydro/tools/MC.conf

cp $REF_CONF  MCfinal.conf


echo "<Ref_Ener>" >> MCfinal.conf
cat $EREF_B >> MCfinal.conf

rm -f ref_ener_global.dat

while read posi
do
    perl -lane "print \"\$F[0] $posi \$F[1]\" "  $EREF_E  >> ref_ener_global.dat

done < $POSI_EXPOSED

sort -k2 ref_ener_global.dat >> MCfinal.conf
echo "</Ref_Ener>" >> MCfinal.conf



