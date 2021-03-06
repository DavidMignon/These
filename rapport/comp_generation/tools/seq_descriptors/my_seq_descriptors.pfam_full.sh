#!/bin/sh
# ======================
# Sequence Descriptors
# example of application
# ======================
#
# Thomas Gaillard, April 2012
# Jialin Liu, March 2012
#
# -----------
# Description
# -----------
#
# This script is an example illustrating the use of the sequence analysis
# scripts distributed with seq_descriptors.
#
# Designed sequences (designed.seq) are first compared to the native
# sequence (native.seq), then to a Pfam alignment (pfam_align.full). For
# comparison, the native sequence is also compared to the Pfam alignment,
# and at last the Pfam alignment is compared to itself.
#
# -----
# Input
# -----
#
# Input material for this example are:
#
# designed.seq                       Designed sequences in SEQ format
# native.seq                         Native sequence in SEQ format
# pfam_align.full                    Pfam alignment in STOCKHOLM format
# native.aligned_to_pfam_align.full.seq Native sequence aligned to the Pfam alignment in SEQ format
#

# ------
# Output
# ------
#
# Output files produced are:
#
# designed.compos                      Designed sequences global amino acid composition
# pfam_align.full.seq                     Pfam alignment in SEQ format
# pfam_align.full.compos                  Pfam alignment global amino acid composition
# pfam_align.full.profile                 Pfam profile
# designed.aligned_to_pfam_align.full.seq Designed sequences aligned to Pfam alignment
# designed_vs_native.byseq.dat         Designed vs native descriptors by sequence
# designed_vs_native.bypos.dat         Designed vs native descriptors by position
# designed_vs_pfam.byseq.dat           Designed vs Pfam descriptors by sequence
# designed_vs_pfam.bypos.dat           Designed vs Pfam descriptors by position
# native_vs_pfam.byseq.dat             Native vs Pfam descriptors by sequence
# native_vs_pfam.bypos.dat             Native vs Pfam descriptors by position
# pfam_vs_pfam.byseq.dat               Pfam vs Pfam descriptors by sequence
# pfam_vs_pfam.bypos.dat               Pfam vs Pfam descriptors by position

# Path of scripts and libraries
export LIB=/data/mignon/comp_generation/tools/seq_descriptors/lib

# First position in designed sequences
firstdesignedpos=`cat firstdesignedpos.txt`

# First position in Pfam alignment
firstpfampos=`cat firstpfampos.full.txt`

# Similarity threshold to define bad mutations
simthreshold=-2

# Check designed sequences
$LIB/seq_check.pl -Q designed.seq -M $LIB/BLOSUM62 -D $LIB/dict_aa

# Calculate global amino acid composition of designed sequences
$LIB/seq_compos.pl designed.seq > designed.compos

# Compare designed sequences to native sequence
query=designed.seq
reference=native.seq
firstposition=$firstdesignedpos
out=designed_vs_native
$LIB/seq_descriptors.pl -M $LIB/BLOSUM62 -D $LIB/dict_aa -Q $query -R $reference -f $firstposition -t $simthreshold -o $out

# Convert Pfam alignment from STOCKHOLM to SEQ format
$LIB/stockholm2seq.pl pfam_align_without_native.full|tr '-' '.'|tr '[a-z]' '[A-Z]' > pfam_align.full.seq

# Check Pfam alignment
$LIB/seq_check.pl -Q pfam_align.full.seq -M $LIB/BLOSUM62 -D $LIB/dict_aa

# Calculate global amino acid composition of Pfam alignment
$LIB/seq_compos.pl pfam_align.full.seq > pfam_align.full.compos

# Build a profile from Pfam alignment
$LIB/seq2profile.pl pfam_align.full.seq > pfam_align.full.profile

# Align designed sequences to Pfam alignment according to the already aligned native sequence
query=designed.seq
reference=native.aligned_to_pfam_align.full.seq
firstquerypos=$firstdesignedpos
firstrefpos=$firstpfampos
$LIB/seq_add_gaps.pl -Q $query -R $reference -F $firstquerypos -f $firstrefpos > designed.aligned_to_pfam_align.full.seq

# Compare designed sequences to Pfam alignment
query=designed.aligned_to_pfam_align.full.seq
profile=pfam_align.full.profile
numbering=native.aligned_to_pfam_align.full.seq
firstposition=$firstpfampos
out=designed_vs_pfam.full
$LIB/seq_descriptors.pl -M $LIB/BLOSUM62 -D $LIB/dict_aa -Q $query -P $profile -n $numbering -f $firstposition -t $simthreshold -o $out

# Compare native sequence to Pfam alignment
query=native.aligned_to_pfam_align.full.seq
profile=pfam_align.full.profile
numbering=native.aligned_to_pfam_align.full.seq
firstposition=$firstpfampos
out=native_vs_pfam.full
$LIB/seq_descriptors.pl -M $LIB/BLOSUM62 -D $LIB/dict_aa -Q $query -P $profile -n $numbering -f $firstposition -t $simthreshold -o $out


# Compare Pfam alignment to itself
query=pfam_align.full.seq
profile=pfam_align.full.profile
numbering=native.aligned_to_pfam_align.full.seq
firstposition=$firstpfampos
out=pfam_vs_pfam.full
$LIB/seq_descriptors.pl -M $LIB/BLOSUM62 -D $LIB/dict_aa -Q $query -P $profile -n $numbering -f $firstposition -t $simthreshold -o $out


#auto_simil.pl pfam_align.full

#/data/mignon/tools/auto_simil.pl pfam_align_without_native.full native.aligned_to_pfam_align.full.seq

#/data/mignon/tools/subs_col.pl pfam_vs_pfam.full.bypos.dat 3 autosimil.bypos.dat 2 > pfam_vs_pfam.full.bypos.new

#/data/mignon/tools/subs_col.pl pfam_vs_pfam.full.byseq.dat 2 autosimil.byseq.dat 2 > pfam_vs_pfam.full.byseq.new


# plot 

#$LIB/../my_plot_seq_descriptors.sh 