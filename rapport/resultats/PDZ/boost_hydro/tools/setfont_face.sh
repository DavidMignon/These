#!/bin/bash -xe
# applique des couleurs html aux AA1l hydrophobes de FILE, un fichier boxshade.
# ./setcolo.sh #010101 #fefefe myfile.html
# David Mignon


FILE=$1


perl -pe "s/<td>(\w)<\/TD>/<td><FONT FACE=\"courier new\">\$1<\/FONT><\/TD>/g" $FILE
