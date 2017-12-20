o = "best"
set term pdf mono
set output o . ".pdf"
print "write: " . o . ".pdf"

set xlabel "force, pN"
set ylabel "relative diameters"

a = "~/D/str/5%/2562/rbc/kb0.000/e"

s = 580

set key left
plot [0:] \
     "up.txt" w p ps 1 pt 6 t "", \
     "do.txt" w p ps 1 pt 7 t "", \
     a  u ($1*s):2 w l lw 3 lt 1 t "", \
     a  u ($1*s):4 w l lw 3 lt 1 t ""
