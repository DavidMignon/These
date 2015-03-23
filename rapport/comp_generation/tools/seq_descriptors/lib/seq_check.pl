#!/usr/bin/perl
# Check SEQ file consistency
# - test if all sequences have the same length
# - test if amino acids are known in libraries
#
# Jialin Liu, March 2012
# Thomas Gaillard, April 2012
#
# ./seq_check.pl -Q <queryseqfile> [-M <matrixfile>] [-D <dict_aa>]
#
# -Q <queryseqfile>  Query sequence alignment (SEQ format) [required]
# -M <matrixfile>    Similarity matrix (MATBLAS format)
# -D <dict_aa>       Dictionary file of amino acid properties
#
# the SEQ format is the simplest multiple alignment format (one sequence by line, nothing else)

use strict;
use warnings;
use Getopt::Std;

my %opts;
getopts('Q:M:D:',\%opts);

# Process arguments
my $seqfile;
if ($opts{Q}) {$seqfile = $opts{Q}}
else {die "query alignment file is needed"}
my $matrixfile;
if ($opts{M}) {$matrixfile = $opts{M}}
my $dictfile;
if ($opts{D}) {$dictfile = $opts{D}}

my %matrix;
if ($matrixfile) {
# Read similarity matrix (MATBLAS format)
my @colheads;
open MATRIX, $matrixfile or die "unable to open $matrixfile";
while (<MATRIX>) {
  if (not /^#/) {
    if (/^ /) {@colheads = split}
    elsif (/^(\S) (.*)/) {
      my $rowindex = $1;
      my @row = split ' ',$2;
      die "number of elements mismatch in row $rowindex" unless (scalar(@row) == scalar(@colheads));
      for my $j (0..@row-1) {
        my $colindex = $colheads[$j];
        $matrix{$rowindex}{$colindex} = $row[$j];
      }
    }
  }
}
close MATRIX;
}

my %dict;
if ($dictfile) {
# Read dictionary of amino acid properties
my @keys = ('charge','mass','volume','ionic','class','refener');
open DICT, $dictfile;
while(<DICT>) {
    if (not /^#/) {
      my @fields = split;
      for my $k (0..@keys-1) {
        $dict{$fields[0]}{$keys[$k]} = $fields[$k+1];
      }
    }
}
close DICT;
}

# Read and check query sequences (SEQ format)
my $length;
my $nseq = 0;
open SEQ, $seqfile or die "unable to open $seqfile";
while (<SEQ>) {
  chomp;
  $nseq++;
  my $seq = $_;
  if (not defined $length) {$length = length($seq)}
  if (length($seq) != $length) {die "length mismatch for sequence $nseq"}
  for my $k (0..$length-1) {
    my $aa = substr($seq,$k,1);
    # Check if amino acid is known in matrix
    if (($matrixfile)&&(not exists $matrix{$aa}{$aa})) {
      die "unknown amino acid $aa in matrix $matrixfile";
      print $seq ."   <--la sequence\n";
    }
    # Check if amino acid is known in dictionary
    if (($dictfile)&&(not exists $dict{$aa})) {
      die "unknown amino acid $aa in dictionary $dictfile";
    }
  }
}
close SEQ;
