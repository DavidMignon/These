# LaTeX2HTML 2008 (1.71)
# Associate labels original text with physical files.


$key = q/tab:parameters/;
$external_labels{$key} = "$URL/" . q|tables.html|; 
$noresave{$key} = "$nosave";

$key = q/tab:entropy/;
$external_labels{$key} = "$URL/" . q|tables.html|; 
$noresave{$key} = "$nosave";

$key = q/tab:20act/;
$external_labels{$key} = "$URL/" . q|tables.html|; 
$noresave{$key} = "$nosave";

$key = q/tab:10act/;
$external_labels{$key} = "$URL/" . q|tables.html|; 
$noresave{$key} = "$nosave";

$key = q/tab:quality/;
$external_labels{$key} = "$URL/" . q|tables.html|; 
$noresave{$key} = "$nosave";

$key = q/tab:proteins/;
$external_labels{$key} = "$URL/" . q|tables.html|; 
$noresave{$key} = "$nosave";

1;


# LaTeX2HTML 2008 (1.71)
# labels from external_latex_labels array.


$key = q/tab:proteins/;
$external_latex_labels{$key} = q|2|; 
$noresave{$key} = "$nosave";

$key = q/tab:quality/;
$external_latex_labels{$key} = q|3|; 
$noresave{$key} = "$nosave";

$key = q/tab:10act/;
$external_latex_labels{$key} = q|4|; 
$noresave{$key} = "$nosave";

$key = q/tab:parameters/;
$external_latex_labels{$key} = q|1|; 
$noresave{$key} = "$nosave";

$key = q/tab:entropy/;
$external_latex_labels{$key} = q|6|; 
$noresave{$key} = "$nosave";

$key = q/tab:20act/;
$external_latex_labels{$key} = q|5|; 
$noresave{$key} = "$nosave";

1;

