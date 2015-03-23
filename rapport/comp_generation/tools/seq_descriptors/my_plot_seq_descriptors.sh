#!/bin/sh
# Sequence Descriptors
# plot examples
# Thomas Gaillard, April 2012
# Similarity score distributions
gnuplot <<EOF
set xlabel 'Similarity score'
set ylabel 'Frequency'
native = system("awk '!/^#/{print\$2}' native_vs_pfam.full.byseq.dat")
ndesigned = system("grep -v '#' designed_vs_pfam.full.byseq.dat|wc -l")
npfam = system("grep -v '#' pfam_vs_pfam.full.byseq.dat|wc -l")
bin(x,s) = s*int(x/s)
s=2.0
set terminal dumb
set out '/dev/null'
plot "designed_vs_pfam.full.byseq.dat" u (bin(\$2,s)):(1/ndesigned) smooth frequency w lp lw 5 pt 7 ps 0.4 t 'Designed vs Pfam full',\
     1/0 w l lw 5 t 'Native vs Pfam',\
     "pfam_vs_pfam.full.byseq.new" u (bin(\$2,s)):(1/npfam) smooth frequency w lp lw 5 pt 7 ps 0.4 t 'Pfam full vs Pfam full'
set arrow from native,0 to native,GPVAL_Y_MAX nohead lt 2 lw 5
set terminal pdfcairo rounded font ",5"
set out 'similarity_byseq_frequency.pdf'
replot
EOF

# Similarity score by position
gnuplot <<EOF
set xlabel 'Position'
set ylabel 'Similarity score'
set terminal pdfcairo rounded font ",5"
set out 'similarity_bypos.pdf'
plot "designed_vs_pfam.full.bypos.dat" u 1:3 w lp lw 5 pt 7 ps 0.4 t 'Designed vs Pfam full',\
     "native_vs_pfam.full.bypos.dat" u 1:3 w lp lw 5 pt 7 ps 0.4 t 'Native vs Pfam full ',\
     "pfam_vs_pfam.full.bypos.new" u 1:3 w lp lw 5 pt 7 ps 0.4 t 'Pfam full vs Pfam full'
EOF
