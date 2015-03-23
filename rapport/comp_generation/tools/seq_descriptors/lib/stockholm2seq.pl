#!/usr/bin/perl
# Convert sequence alignment from STOCKHOLM to SEQ format
#
# Thomas Gaillard, April 2012
#
# ./stockholm2seq.pl <stockholmfile>
#
# The STOCKHOLM format is the one used by Pfam (http://en.wikipedia.org/wiki/Stockholm_format).
# The SEQ format is the simplest sequence alignment format (one sequence by line, nothing else)

use strict;
use warnings;

# Read filename
my $filename;
if ($ARGV[0]) {$filename = $ARGV[0]}
else {die "a sequence file is needed as argument"}

# Read sequence alignment in STOCKHOLM format
# and print in SEQ format
my $length;
open FILE, $filename or die "unable to open $filename";
while (<FILE>) {
  if ((not /^#/)&&(not /^\/\//)) {
    if (/^(\S+)\s+(\S+)/){
      my $id=$1;
      my $seq=$2;
      if (not defined $length) {$length = length($seq)}
      if (length($seq) != $length) {die "length mismatch for sequence $id"}
      print "$seq\n";
    }
  }
}
close FILE;
