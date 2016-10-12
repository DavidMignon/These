#!/bin/bash 


TOOLS=/home/mignon/bioinfo/PDZ/optGrad/tools/

export PATH=$PATH:$TOOLS

prot_dir=$1

native_dir=$prot_dir/native

pwd

#sort -u -k3,3gr -k4 --buffer-size=8G --parallel 4  --temporary-directory=. re.seq_? > proteus.seq.sort

$TOOLS/proteus/proteus  < ~/bioinfo/PDZ/conf/postprocess.conf

efasta2fasta.pl proteus.efasta $native_dir/native.seq > proteus.fasta

deleteduplicate.pl proteus.fasta | head -n 20000 > proteus.uniq.fasta
 
/home/mignon/bioinfo/PDZ/boost_hydro/tools/bioscripts.convert-0.4/bioscripts/convert/convbioseq.py clustal proteus.uniq.fasta
