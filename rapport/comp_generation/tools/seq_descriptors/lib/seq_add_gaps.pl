#!/usr/bin/perl
# Add gaps to a sequence alignment and truncate it according to a reference sequence
#
# Thomas Gaillard, April 2012
#
# ./seq_add_gaps.pl -Q <query.seq> -R <ref.seq> [-F <firstquerypos>] [-f <firstrefpos>]
#
# -Q <query.seq>     Query sequence alignment (SEQ format) [required]
# -R <ref.seq>       Reference sequence (SEQ format) [required]
# -F <firstquerypos> First position of query sequences (default: 1)
# -f <firstrefpos>   First position of reference sequence (default: 1)
#
# the SEQ format is the simplest multiple alignment format (one sequence by line, nothing else)

use strict;
use warnings;
use Getopt::Std;

my %opts;
getopts('Q:R:F:f:',\%opts);

# Process arguments
my $seqfile;
if ($opts{Q}) {$seqfile = $opts{Q}}
else {die "query alignment file is needed"}
my $refseqfile;
if ($opts{R}) {$refseqfile = $opts{R}}
else {die "reference sequence file needed"}
my $firstquerypos = 1;
if ($opts{F}) {$firstquerypos = $opts{F}}
my $firstrefpos = 1;
if ($opts{f}) {$firstrefpos = $opts{f}}

# Read reference sequence (SEQ format)
# find number of gaps to add to each position
my $ngaps = 0;
my %ngapsindex;
open REFSEQ, $refseqfile or die "unable to open $refseqfile";
my $refseq = <REFSEQ>;
close REFSEQ;
chomp $refseq;
my $reflength = length($refseq);
for my $k (0..$reflength-1) {
  my $aa = substr($refseq,$k,1);
  if ($aa eq '.') {$ngaps++}
  else {$ngapsindex{$k} = $ngaps}
}

# Read query sequences (SEQ format)
# and print them aligned to the reference sequence
my $length;
my $nseq = 0;
open SEQ, $seqfile or die "unable to open $seqfile";
while (<SEQ>) {
  chomp;
  $nseq++;
  my $seq = $_;
  if (not defined $length) {$length = length($seq)}
  if (length($seq) != $length) {die "length mismatch for sequence $nseq"}
  for my $k (0..$reflength-1) {
    my $refaa = substr($refseq,$k,1);
    if ($refaa eq '.') {print '.'}
    else {
      my $aa = substr($seq,$k+$firstrefpos-$firstquerypos-$ngapsindex{$k},1);
      print $aa;
    }
  }
  print "\n";
}
close SEQ;
