#!/usr/bin/perl -w
use strict;
use Tie::File;

$|=1;   ###printing option###


################################################################
## David Mignon, Juin 2013                                    ##
## recupere les séquences homoloques à une requête (=> >90% d'## 
## ident sur >90% des positions) dans une sortie blast,       ##
## et les envèle de la base au format STOCKHOM (align pfam)   ##
## identifiants                                               ##
## Usage:                                                     ##
## ./pfam_cleaner.pl blast_output.txt pfam_align  req.txt     ##
##                                                            ##
################################################################


###################################################
# variables
###################################################
my $blast=shift;
my $pfam_align=shift;
my $req_file=shift;
my $query_id;
my $target_id;
my $ident;
my $align_length;
my $query_length;
my %homo;
my $key;
my $query;
###################################################
# Constantes
###################################################

use constant IDENTITY  => 90 ;

use constant ALIGN_LENGTH  => 0.90 ;


############################################################################
# read the BLAST output file, init the cluster and load the homo array     #
############################################################################
open(REQ,"$req_file") or die "sorry, opening $req_file failed";

$query=<REQ>;
close(REQ);
chomp $query;

$query=~s/\.//g;

$query_length=length($query);

open(BLAST,"$blast") or die "sorry, opening $blast failed";

while(<BLAST>){
 
	if(/^>(\S+)\s*$/){
	    $target_id=$1;
	}

	if(/^\s*Identities = \d+\/(\d+)\s\((\d+)\%\)/){
	    $align_length=$1;
	    $ident=$2;
	    if($ident >= IDENTITY && $align_length/$query_length>= ALIGN_LENGTH ){
		$homo{$target_id}++;
	    }
	}
}

close(BLAST);


open(PFAM,"$pfam_align") or die "sorry, opening $pfam_align failed";

while(<PFAM>){
    if(/^(\S+)\s+\S+$/){
	$key=$1;
	unless(exists($homo{$key})){
	    print;
	}
    }else{
	print;
    }
}
close(PFAM);


