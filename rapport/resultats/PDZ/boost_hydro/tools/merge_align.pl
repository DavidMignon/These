#!/usr/bin/perl -w

######################################################################
#  applique les couleurs html de file1.html à l'alignement de file2  #
# ./merge_align.pl file1.html file2.html                             #
######################################################################


use strict;
use File::Copy "cp";
use Tie::File;
$|=1;   ###printing option###


#############################################################
# Variables                                                 # 
#############################################################
my $file1=shift;
my $file2=shift;
my @FILE1;
my @FILE2;
my $cpt=0;
my $aa1;
#############################################################

tie @FILE1, 'Tie::File', "$file1" or die "$! $file1" ;
tie @FILE2, 'Tie::File', "$file2" or die "$! $file2" ;
for (@FILE1) {
    $cpt++;
    if (/<td>(\w)<\/TD>/){
        $aa1=$1;
    }elsif(/<td BGCOLOR=.+><FONT COLOR=.+>(\w)<\/FONT><\/TD>/){
        $aa1=1;
    }
    if ( $FILE2[$cpt]=~ /<td>(\w)<\/TD>/ ){
        $FILE2[$cpt]=~ s/<td>(\w)<\/TD>/<td>$aa1<\/TD>/;
    }elsif(/<td BGCOLOR=.+><FONT COLOR=.+>(\w)<\/FONT><\/TD>/){
        $FILE2[$cpt]=~ s/<td BGCOLOR=.+><FONT COLOR=.+>(\w)<\/FONT><\/TD>/<td BGCOLOR=.+><FONT COLOR=.+>$aa1<\/FONT><\/TD>/;
    }
}
untie @FILE1;
untie @FILE2;
