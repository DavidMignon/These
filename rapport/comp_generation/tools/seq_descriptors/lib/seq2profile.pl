#!/usr/bin/perl
# Build a PROFILE from a multiple alignment in SEQ format
#
# Thomas Gaillard, April 2012
#
# ./seq2profile.pl <seqfile>
#
# the SEQ format is the simplest multiple alignment format (one sequence by line, nothing else)
# the PROFILE format gives the composition of one position by line like this: F:0.39,L:0.02,Y:0.59

use strict;
use warnings;

my $seqfile;
if ($ARGV[0]) {$seqfile = $ARGV[0]}
else {die "an alignment file is needed as argument"}

# Read sequence alignment (SEQ format)
# and build profile
my @profile;
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
    $profile[$k]{$aa}++;
  }
}
close SEQ;
# normalize profile and print by decreasing frequency
for my $k (0..$length-1) {
  my @compos;
  for my $aa (sort {$profile[$k]{$b} <=> $profile[$k]{$a}} keys %{$profile[$k]}) {
    $profile[$k]{$aa} /= $nseq;
    push @compos, sprintf "%s:%.7f",$aa,$profile[$k]{$aa};
  }
  printf "%s\n",join(",",@compos);
}
