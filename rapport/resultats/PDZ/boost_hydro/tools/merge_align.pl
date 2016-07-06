#!/usr/bin/perl -w

###########################################################################
#  applique l'alignement file1.html aux couleurs de file2.html            #
# ./merge_align.pl file1.html file2.html                                  #
###########################################################################


use strict;
use File::Copy "cp";
$|=1;   ###printing option###


#############################################################
# Variables                                                 #
#############################################################
my $html1=shift;
my $html2=shift;
my $line2="";
my $cpt=0;
my $aa1;
my $color1;
my $color2;
#############################################################

open(HTML1,"$html1" )  or die " $html1 : $!";

open(HTML2,"$html2" )  or die " $html2 : $!";


while(<HTML1>) {
    $line2=<HTML2>;
    if (/<td>(\w)<\/TD>/){
        $aa1=$1;
    }
    if ( $line2=~ /<td>(\w)<\/TD>/ ){
        $line2=~ s/<td>(\w)<\/TD>/<td>$aa1<\/TD>/;
    }elsif($line2=~ /<td BGCOLOR=(.+)><FONT COLOR=(.+)>(\w)<\/FONT><\/TD>/){
        $color1=$1;
        $color2=$2;
        $line2=~ s/<td BGCOLOR=$color1><FONT COLOR=$color2>(\w)<\/FONT><\/TD>/<td BGCOLOR=$color1><FONT COLOR=$color2>$aa1<\/FONT><\/TD>/;
    }
    print $line2;
}

close(HTML1);
close(HTML2);