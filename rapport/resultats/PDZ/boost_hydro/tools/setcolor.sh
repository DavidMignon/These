#!/bin/bash -xe
# applique des couleurs html aux AA1l hydrophobes de FILE, un fichier boxshade.
# ./setcolo.sh #010101 #fefefe myfile.html
# David Mignon


FILE=$1
COLOR=$2
BGCOLOR=$3

perl -pe "s/<td>(L|A|F|T|V|M|P|I|C|G)<\/TD>/<td BGCOLOR=\"$BGCOLOR\"><FONT COLOR=\"$COLOR\">\$1<\/FONT><\/TD>/g" $FILE
