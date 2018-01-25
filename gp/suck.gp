o = "suck"
set term pdf mono
set output o . ".pdf"
print "write: " . o . ".pdf"

set xlabel "force, pN"
set ylabel "suck or not"

set key center

set yticks 0, 1

plot [][-0.1:1.2] "suck.dat" u 1:2 w lp lw 4 pt 6 t "kb=2",   \
                  ""         u 1:3 w lp lw 4 pt 7 t "kb=1000"
