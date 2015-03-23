#!/bin/bash
#PBS -l walltime=5:00:00
#PBS -l cput=5:00:00
#PBS -l mem=1000mb



cd /data/mignon/comp_generation/

pwd

echo dir $dir
cd $dir 
/data/mignon/comp_generation/tools/seq_descriptors/my_seq_descriptors.pfam_full.sh
