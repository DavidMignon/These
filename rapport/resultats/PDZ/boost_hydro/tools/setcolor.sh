#!/bin/bash -xe
# applique des couleurs html aux AA1l hydrophobes.
# ./setcolor.sh
# David Mignon

colors=("#ffffff" "#ffffff" "#ffffff" "#ffffff" "#000000" "#000000" "#000000" )
#bgcolors=("#000000" "#333333" "#666666" "#888888" "#aaaaaa" "#cccccc" "#eeeeee" )
bgcolors=("#630c0c" "#c01818" "#d24a22" "#d27522" "#d2a022" "#fbda5e" "#fafbad" )

hydro="L|A|F|T|V|M|P|I|C|G"


PATH=$PATH:/home/mignon/These/rapport/resultats/PDZ/boost_hydro/tools


BASEFILE=sub.uniq.html

WORKDIR=`pwd`


for dir in  0 1 2 3 4 5 6

do

cd $WORKDIR/$dir

COLOR=${colors[$dir]}
BGCOLOR=${bgcolors[$dir]}

if [ "$dir" == "0" ]
then
    FILE=$BASEFILE

else
    merge_align.pl $BASEFILE $last_dir/color.html > tmp.html
    FILE=tmp.html
fi

perl -pe "s/<td>($hydro)<\/TD>/<td BGCOLOR=\"$BGCOLOR\"><FONT COLOR=\"$COLOR\">\$1<\/FONT><\/TD>/g" $FILE > color.html


last_dir=../$dir

done
