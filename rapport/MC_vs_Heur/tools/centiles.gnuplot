set output './PDZ.centiles.png'

set terminal png  size 600,400
set title "PDZ"
set yrange [:]
set xrange [0:100] 

plot "PDZ.heuris0.centiles" w lp lw 3 pt 3 ps 0.4 t 'heuristic',"PDZ.p4.centiles" w lp lw 3 pt 3 ps 0.4 t 'MC' 