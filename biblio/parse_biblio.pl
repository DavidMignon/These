#!/usr/bin/perl -w
use strict;
$|=1;   ###printing option###


##############################################################
## David Mignon, Juillet 2017                               ##
## parse un fichier biblio brute en un fichier .bib         ##
## Usage:                                                   ##
## ./parse_biblio.pl biblio.text > biblio.bib               ##
##############################################################


###################################################
# variables                                       #
###################################################
my $biblio_txt=shift;
my $authors;
my $title;
my $journal;
my $volume;
my $pages;
my $year;
my %articles;
my $first_author;
#############################################################
# read the BLAST output,check the lines and catch the infos #
#############################################################
open(TXT,"$biblio_txt") or die "sorry, opening $biblio_txt failed";
while(<TXT>){
    $authors="";
    $title="";
    $journal="";
    $volume="";
    $pages="";
    $year="";
    $first_author="";

    chomp;
#    if (/^((\S+)\s.+\.)\s*\((\d{4})\)\s*\.\s*(.+.)\.\s*(.+)\s+(\d+),\s*(\d+\S*\d+)\./){
#    if (/^((\S+)\s.+\.)\|\s*(.+),\s*(.+),\s*vol\.\s*(\d+),\s*p\.\s*(.+),\s*(\d+)/){
#    if (/^((\S+)\s.+)\|\s*(.+?)\.\s*(.+)\s*(\d+)\s*\((\d{4})\),\s*(.+)\./){

    if (/^\s*((\S+)\s.+?)\./){
	$authors=$1;
	$first_author=$2; 
    }

    


    if (/^\s*((\S+)\s.+?)\.\s*(.+?)\.\s*/){
	$authors=$1;
	$first_author=$2; 
    }



    
    if (/^\s*((\S+)\s.+?)\.\s*(.+?)\.\s*(.+)\./){
	$authors=$1;
	$first_author=$2; 
	$title=$3;

    }


    if (/^\s*((\S+)\s.+?)\.\s*(.+?)\.\s*(.+)\.\s*(\d+);(\d+):(.+)\./){

 	$authors=$1;
	$first_author=$2; 
	$title=$3;
	$journal=$4;
	$volume=$6;
	$pages=$7;
	$year=$5;
       

	print "\@Article{".$first_author.$year .",\n"   
              ."Author    = {".$authors."},\n"       
              ."Title     = {".$title."},\n"         
              ."Journal   = {".$journal."},\n"       
	      ."Volume    = {".$volume."},\n"        
	      ."Pages     = {".$pages."},\n"         
	      ."year      = ".$year."\n"            
              ."}\n";                                    
             
    }else{
	print "# ".$_ ."\n";
    }
}
close(TXT);






