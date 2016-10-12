#!/bin/bash -xev


###########################################################################
#  produit un fichier html avec N sequences d'AA de proteus               #
# ./proteus2html.sh                                                       #
###########################################################################



OPT_TOOLS=/home/mignon/bioinfo/PDZ/optGrad/tools/
BOOST_TOOLS=/home/mignon/bioinfo/PDZ/boost_hydro/tools/


fasta_line=12

export PATH=$PATH:$OPT_TOOLS:$BOOST_TOOLS

native=$1

pwd

sort -u -k3,3gr -k4 --buffer-size=7G --parallel 8  --temporary-directory=. re.seq_? | head -n 100000 > proteus.seq.sort

$OPT_TOOLS/proteus/proteus  < ~/bioinfo/PDZ/conf/postprocess.conf

efasta2fasta.pl proteus.efasta $native > proteus.fasta

deleteduplicate.pl proteus.fasta | head -n $fasta_line > proteus.uniq.fasta
 
convbioseq.py clustal proteus.uniq.fasta

boxshade -numdef < $BOOST_TOOLS/boxshade.param 



