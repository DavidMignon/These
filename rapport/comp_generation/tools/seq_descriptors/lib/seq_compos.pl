#!/usr/bin/perl
# Calculate global amino acid composition from a multiple alignment in SEQ format
#
# Thomas Gaillard, April 2012
#
# ./seq_compos.pl <seqfile> [ignorelist]
#
# the SEQ format is the simplest multiple alignment format (one sequence by line, nothing else)
#
# optional ignorelist is a comma separated list of one-letter amino acid codes to ignore
# (default: '.', ie ignore gaps)

use strict;
use warnings;

my $seqfile;
if ($ARGV[0]) {$seqfile = $ARGV[0]}
else {die "an alignment file is needed as argument"}
my @ignorelist = ('.');
if ($ARGV[1]) {@ignorelist = split ",", $ARGV[1]}

# Read sequence alignment (SEQ format)
# and calculate global composition
my %compos;
my $length;
my $nseq = 0;
my $naa = 0;
open SEQ, $seqfile or die "unable to open $seqfile";
while (<SEQ>) {
  chomp;
  $nseq++;
  my $seq = $_;
  if (not defined $length) {$length = length($seq)}
  if (length($seq) != $length) {die "length mismatch for sequence $nseq"}
  for my $k (0..$length-1) {
    my $aa = substr($seq,$k,1);
    if (not grep {/^$aa$/} @ignorelist) {
      $naa++;
      $compos{$aa}++;
    }
  }
}
close SEQ;

# Print global composition
for my $aa (sort keys %compos) {
  printf "%s %.5f\n",$aa,$compos{$aa}/$naa;
}
