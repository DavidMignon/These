#!/usr/bin/perl -w
use strict;
$|=1;   ###printing option###


#################################################################
## David Mignon, Juillet 2016                                  ##
## compte les aa hydrophobes à chaque position d'un aligmement ##
## et imprime les positions PDB d'une selection                ##
## Utilisation:                                                ##
## ./posi_hydro.pl align.fasta posi_type.txt                   ##
##                                                             ##
#################################################################


###################################################
# variables
###################################################
my $fasta=shift;
my $posi_type=shift;
my @hydro_nb;
my @PDB_posi;
my $aa;
my $posi;
my $hydro="L|A|F|V|M|W|I|Y";
my $seq_nb=0;
my $threshold=0.95;
############################################################################
# lecture du fichier fasta                                                 #
############################################################################
open(FASTA,"$fasta") or die "sorry, opening $fasta failed";

while(<FASTA>){
 
    unless(/^>/){
		$posi=1;

		for $aa (split //){
			if ($aa=~ /$hydro/){
				$hydro_nb[$posi]++;
			}
			$posi++;
		}
		$seq_nb++;
	}
}

close(FASTA);


############################################################################
# lecture du fichier posi_type.txt                                         #
############################################################################

open(POSI,"$posi_type") or die "sorry, opening $posi_type failed";

while(<POSI>){

	($aa,$PDB_posi[$.])=split;
}
close(POSI);


for $posi (0..$#hydro_nb) {
	if ((defined $hydro_nb[$posi] ) and ( $seq_nb * $threshold < $hydro_nb[$posi])){
		print "$PDB_posi[$posi] $hydro_nb[$posi]\n";
	}
}
