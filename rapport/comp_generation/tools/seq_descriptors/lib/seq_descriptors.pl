#!/usr/bin/perl
# Calculate descriptors of sequences with respect to other sequences
#
# Thomas Gaillard, April 2012
# Jialin Liu, March 2012
#
# USAGE
#
# ./seq_descriptors.pl -M <matrixfile> -D <dict_aa> -Q <queryseqfile> (-R <refseqfile>|-P <profilefile>) [options]
#
# -M <matrixfile>    Similarity matrix (MATBLAS format) [required]
# -D <dict_aa>       Dictionary file of amino acid properties [required]
# -Q <queryseqfile>  Query sequence alignment (SEQ format) [required]
# -R <refseqfile>    Reference sequence alignment (SEQ format) [-R or -P required]
# -P <profilefile>   Reference profile (PROFILE format) [-R or -P required]
# -n <numberingfile> Sequence (SEQ format) used to define position numbering (default: none)
# -f <firstposition> First position of alignment (default: 1)
# -i <ignorelist>    Comma separated list of one-letter amino acid codes to ignore (default: none)
# -p <positionlist>  Comma separated list of positions to consider (default: all positions)
# -t <threshold>     Similarity threshold to define bad scores (default: matrix minimum)
# -o <prefix>        Output file prefix (default: 'descriptors')
#
# The SEQ format is the simplest multiple alignment format (one sequence by line, nothing else)
#
# The PROFILE format gives the composition of one position by line like this: F:0.39,L:0.02,Y:0.59
#
# If there is no numbering sequence, positions are numbered from
# firstposition to firstposition + length(sequences) - 1, gaps are included.
#
# If a numbering sequence has been provided, it is used as the reference
# for position numbering, gaps in the numbering sequence are ignored.
# Positions are then numbered from firstposition to firstposition +
# length(numbering_sequence_without_gaps) - 1.
#
# INPUT
#
# queryseqfile Query sequence alignment (SEQ format)
# refseqfile   Reference sequence alignment (SEQ format)
# or
# profilefile  Reference profile (PROFILE format)
# matrixfile   Similarity matrix (MATBLAS format)
# dict_aa      Dictionary file of amino acid properties
#
# A profile is first calculated from reference sequences or provided
# directly as argument. Query and reference sequences or profile must be
# aligned and have the same length, this also applies to the numbering
# sequence if provided.
#
# OUTPUT
#
# $out.profile   Reference profile if not provided as argument
# $out.byseq.dat Descriptors by sequence
# $out.bypos.dat Descriptors by position
#
# Descriptors by sequence:
#
# - identity score wrt reference
# - similarity score wrt reference and percentage of bad score occurrences
# - charge and number/percentage of charge changes
# - mass and mass ratio wrt reference
# - volume and volume ratio wrt reference
# - number and percentage of ionicity changes
# - reference energy
#
# Descriptors by position:
#
# - identity score wrt reference
# - similarity score wrt reference and percentage of bad score occurrences
# - entropy
# - amino acid composition sorted by frequency

use strict;
use warnings;
use Getopt::Std;

my %opts;
getopts('M:D:Q:R:P:n:f:i:p:t:o:',\%opts);

# Process arguments
my $matrixfile;
if ($opts{M}) {$matrixfile = $opts{M}}
else {die "matrix file is needed"}
my $dictfile;
if ($opts{D}) {$dictfile = $opts{D}}
else {die "a dictionnary file is needed"}
my $seqfile;
if ($opts{Q}) {$seqfile = $opts{Q}}
else {die "query alignment file is needed"}
my $refseqfile;
if ($opts{R}) {$refseqfile = $opts{R}}
my $profilefile;
if ($opts{P}) {$profilefile = $opts{P}}
die "either a reference alignment or a profile file is needed" unless (($opts{R})||($opts{P}));
my $numberingfile;
if ($opts{n}) {$numberingfile = $opts{n}}
my $firstposition = 1;
if ($opts{f}) {$firstposition = $opts{f}}
my @ignorelist;
if ($opts{i}) {@ignorelist = split ",", $opts{i}}
my @positionlist;
if ($opts{p}) {@positionlist = split ",", $opts{p}}
my $simthreshold;
if ($opts{t}) {$simthreshold = $opts{t}}
my $out = 'descriptors';
if ($opts{o}) {$out = $opts{o}}

# Read similarity matrix (MATBLAS format)
my %matrix;
my @colheads;
my $matrixmin;
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
        if ((not defined $matrixmin)||($matrix{$rowindex}{$colindex} < $matrixmin)) {
          $matrixmin = $matrix{$rowindex}{$colindex};
        }
      }
    }
  }
}
close MATRIX;
if (not defined $simthreshold) {$simthreshold = $matrixmin}

# Read dictionary of amino acid properties
my %dict;
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

my @refprofile;
my $reflength;
if ($refseqfile) {
# Read reference sequence alignment (SEQ format)
# and build profile
my $nrefseq = 0;
open REFSEQ, $refseqfile or die "unable to open $refseqfile";
while (<REFSEQ>) {
  chomp;
  $nrefseq++;
  my $seq = $_;
  if (not defined $reflength) {$reflength = length($seq)}
  if (length($seq) != $reflength) {die "length mismatch for sequence $nrefseq"}
  for my $k (0..$reflength-1) {
    my $aa = substr($seq,$k,1);
    $refprofile[$k]{$aa}++;
  }
}
close REFSEQ;
# normalize profile and print by decreasing frequency
# don't print if only one sequence
if ($nrefseq > 1) {open PROFILE, ">$out.profile"}
for my $k (0..$reflength-1) {
  my @compos;
  for my $aa (sort {$refprofile[$k]{$b} <=> $refprofile[$k]{$a}} keys %{$refprofile[$k]}) {
    $refprofile[$k]{$aa} /= $nrefseq;
    push @compos, sprintf "%s:%.7f",$aa,$refprofile[$k]{$aa};
  }
  if ($nrefseq > 1) {printf PROFILE "%s\n",join(",",@compos)}
}
if ($nrefseq > 1) {close PROFILE}
}
# or
elsif ($profilefile) {
# Read reference profile (PROFILE format)
open PROFILE, $profilefile or die "unable to open $profilefile";
my $k = 0;
while (<PROFILE>) {
  chomp;
  my @compos = split ",",$_;
  for (@compos) {
    my ($aa,$freq) = (/^(.+):(.+)$/);
    $refprofile[$k]{$aa} = $freq;
  }
  $k++;
}
close PROFILE;
$reflength = $k;
}

my $ngaps = 0;
my %ngapsindex;
my %ngapspos;
if ($numberingfile) {
# Read numbering sequence (SEQ format) if present
# find number of gaps to add to each position
# and count total number of gaps in numbering seq
open NUMSEQ, $numberingfile or die "unable to open $numberingfile";
my $numseq = <NUMSEQ>;
chomp $numseq;
my $numlength = length($numseq);
if ($numlength != $reflength) {die "length mismatch for numbering sequence $numseq"}
for my $k (0..$numlength-1) {
  my $aa = substr($numseq,$k,1);
  if ($aa eq '.') {$ngaps++}
  else {
    $ngapsindex{$k} = $ngaps;
    my $pos = $k+$firstposition-$ngaps;
    $ngapspos{$pos} = $ngaps;
  }
}
close NUMSEQ;
}

# Prepare index list
# if a position list has been provided, verify that positions are in the allowed range
# and map to aligned indices by subtracting firstposition
# (if a numbering sequence has been provided, add cummulative number of gaps to the index)
my @indexlist;
if (@positionlist) {
  for my $pos (@positionlist) {
    if (($pos >= $firstposition)&&($pos < $firstposition+$reflength-$ngaps)) {
      if (exists $ngapspos{$pos}) {$pos += $ngapspos{$pos}}
      my $k = $pos - $firstposition;
      push @indexlist, $k;
    }
  }
}
# else if a position list has not been provided, all positions are treated
# (but if a numbering sequence has been provided, gap positions in this sequence are not treated)
else {
  for my $pos ($firstposition..$firstposition+$reflength-$ngaps-1) {
    if (exists $ngapspos{$pos}) {$pos += $ngapspos{$pos}}
    my $k = $pos - $firstposition;
    push @indexlist, $k;
  }
}

# Calculate reference mass and volume
my $refmass = 0;
my $refvolume = 0;
for my $k (@indexlist) {
  for my $refaa (keys %{$refprofile[$k]}) {
    if (not grep {/^$refaa$/} @ignorelist) {
      $refmass += $dict{$refaa}{mass}*$refprofile[$k]{$refaa};
      $refvolume += $dict{$refaa}{volume}*$refprofile[$k]{$refaa};
    }
  }
}

# Read query sequences (SEQ format)
# calculate identity scores against reference profile
# calculate similarity scores against reference profile
# calculate and print amino acid properties by sequence
my %treated;
my %idscorebypos;
my %simscorebypos;
my %simbadbypos;
my %compos;
my %entropy;
open BYSEQ, ">$out.byseq.dat" or die "unable to open $out.byseq.dat";
print BYSEQ "#identity #similarity #sim%<=thresh #charge #mutcharge #mutcharge/nbpos #mass #mass/refmass #volume #volume/refvolume #ionic #ionic/nbpos #refener\n";
my $length;
my $nseq = 0;
open SEQ, $seqfile or die "unable to open $seqfile";
while (<SEQ>) {
  chomp;
  $nseq++;
  my $seq = $_;
  if (not defined $length) {
    $length = length($seq);
    if ($length != $reflength) {die "length mismatch between query and reference sequences"}
  }
  if (length($seq) != $length) {die "length mismatch for sequence $nseq $length ".length($seq)}
  my $idscore = 0;
  my $simscore = 0;
  my $simbad = 0;
  my $charge = 0;
  my $mutcharge = 0;
  my $mass = 0;
  my $volume = 0;
  my $ionic = 0;
  my $refener = 0;
  my $n = 0;
  for my $k (@indexlist) {
    my $aa = substr($seq,$k,1);
    if (not grep {/^$aa$/} @ignorelist) {
      $n++;
      $treated{$k} = 1;
      # increment charge
      $charge += $dict{$aa}{charge};
      # increment mass
      $mass += $dict{$aa}{mass};
      # increment volume
      $volume += $dict{$aa}{volume};
      # increment reference energy
      $refener += $dict{$aa}{refener};
      # increment amino acid composition
      $compos{$k}{$aa}++;
      # increment entropy
      $entropy{$k}{$dict{$aa}{class}}++;
      for my $refaa (keys %{$refprofile[$k]}) {
        # increment identity score
        if ($aa eq $refaa) {
          $idscore += $refprofile[$k]{$refaa};
          $idscorebypos{$k} += $refprofile[$k]{$refaa};
        }
        # increment similarity score
        if (exists $matrix{$aa}{$refaa}) {
          my $scoreinc = $matrix{$aa}{$refaa}*$refprofile[$k]{$refaa};
          $simscore += $scoreinc;
          $simscorebypos{$k} += $scoreinc;
          if ($matrix{$aa}{$refaa} le $simthreshold) {
            $simbad += $refprofile[$k]{$refaa};
            $simbadbypos{$k} += $refprofile[$k]{$refaa};
          }
        }
        else {die "unknown score for $aa vs $refaa"}
        # increment number of charge changes
	if ($dict{$aa}{charge} ne $dict{$refaa}{charge}) {$mutcharge += $refprofile[$k]{$refaa}}
        # increment number of ionicity changes
	if (($dict{$aa}{ionic} ne $dict{$refaa}{ionic})&&
            ($dict{$aa}{ionic} ne '-')&&($dict{$refaa}{ionic} ne '-')) {$ionic += $refprofile[$k]{$refaa}}
      }
    }
  }
  # Print identity score of sequence
  if ($n > 0) {$idscore *= 100/$n}
  printf BYSEQ "%.2f",$idscore;
  # Print similarity score of sequence
  # and percentage of bad score occurrences
  if ($n > 0) {$simbad /= $n}
  printf BYSEQ " %.2f %.2f",$simscore,$simbad;
  # Print charge and number of charge changes of sequence
  my $meanmutcharge = 0;
  if ($n > 0) {$meanmutcharge = $mutcharge/$n}
  printf BYSEQ " %d %d %.2f",$charge,$mutcharge,$meanmutcharge;
  # Print mass of sequence
  my $massratio = 0;
  if ($refmass > 0) {$massratio = $mass/$refmass}
  printf BYSEQ " %.2f %.2f",$mass,$massratio;
  # Print volume of sequence
  my $volumeratio = 0;
  if ($refvolume > 0) {$volumeratio = $volume/$refvolume}
  printf BYSEQ " %.2f %.2f",$volume,$volumeratio;
  # Print number of ionicity changes of sequence
  my $meanionic = 0;
  if ($n > 0) {$meanionic = $ionic/$n}
  printf BYSEQ " %d %.2f",$ionic,$meanionic;
  # Print reference energy of sequence
  printf BYSEQ " %.2f\n",$refener;
}
close SEQ;
close BYSEQ;

# Calculate and print descriptors by position
open BYPOS, ">$out.bypos.dat" or die "unable to open $out.bypos.dat";
print BYPOS "#pos #identity #similarity #sim%<=thresh #entropy #compos\n";
for my $k (@indexlist) {
  if (exists $treated{$k}) {
    if (not exists $ngapsindex{$k}) {$ngapsindex{$k} = 0}
    # Print position
    my $pos = $k+$firstposition-$ngapsindex{$k};
    printf BYPOS "%d",$pos;
    # Print identity score by position
    if (not exists $idscorebypos{$k}) {$idscorebypos{$k} = 0}
    printf BYPOS " %.2f",$idscorebypos{$k}*100/$nseq;
    # Print similarity score by position
    # and percentage of bad score occurrences
    if (not exists $simscorebypos{$k}) {$simscorebypos{$k} = 0}
    if (not exists $simbadbypos{$k}) {$simbadbypos{$k} = 0}
    printf BYPOS " %.2f %.2f",$simscorebypos{$k}/$nseq,$simbadbypos{$k}/$nseq;
    # Print entropy by position
    my $S = 0;
    for my $class (keys %{$entropy{$k}}){
      my $freq = $entropy{$k}{$class}/$nseq;
      $S -= $freq*log($freq);
    }
    printf BYPOS " %.2f",$S;
    # Print amino acid composition sorted by frequency
    my @compos;
    for my $aa (sort {$compos{$k}{$b} <=> $compos{$k}{$a}} keys %{$compos{$k}}) {
      push @compos, sprintf "%s:%0.2f",$aa,$compos{$k}{$aa}/$nseq;
    }
    printf BYPOS " (%s)\n",join(",",@compos);
  }
}
close BYPOS;
