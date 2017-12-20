o = "bead"
set term pdf mono
set output o . ".pdf"
print "write: " . o . ".pdf"

set xlabel "force, DPD units"
set ylabel "relative diameter"

a = "1%/2562/rbc/kb0.001/e"
b = "5%/2562/rbc/kb0.001/e"

set key left

plot a u 1:2 w l ls 1 lw 4 t "1%", b u 1:2 w l ls 2 lw 4 t "5%", \
     a u 1:4 w l ls 1 lw 4 t ""  , b u 1:4 w l ls 2 lw 4 t ""
