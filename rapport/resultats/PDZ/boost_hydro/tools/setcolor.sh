#!/bin/bash -xe
# applique des couleurs html aux AA1l hydrophobes de FILE, un fichier boxshade.
# ./setcolo.sh #010101 #fefefe myfile.html
# David Mignon


FILE=$1
COLOR=$2
BGCOLOR=$3

perl -pe "s/<td>(I|L|M|V|A|W|F|Y)<\/TD>/<td BGCOLOR=\"$BGCOLOR\"><FONT FACE=\"courier new\" COLOR=\"$COLOR\">\$1<\/FONT><\/TD>/g" $FILE
