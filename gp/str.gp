o = "str"

set term pdf mono
set output o . ".pdf"
print "write: " . o . ".pdf"

set xlabel "force, pN"
set ylabel "diameter, 10^{-6} m "

set key left
plot [0:] "up.txt" w p ps 1 pt 6 t "", "do.txt" w p ps 1 pt 7 t ""
