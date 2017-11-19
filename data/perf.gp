o = "perf"
set term pdf mono
set output o . ".pdf"

t0=14.85
n=327680
tpp = t0/n

steps=4000
nd=10
nv=498

est(c,k)=(k*nv*c + n)*tpp
est1(c) = est(c, 1)
est4(c) = est(c, 4)

set key left
set xlabel "number of cells"
set ylabel "time, seconds"

set xtics 100

plot [][0:] \
     "perf" u 2:3      w lp lw 3 ps 1 pt 7 t "", \
     "" u 2:(est1($2)) w l  lw 3 t "x1", \
     "" u 2:(est4($2)) w l  lw 3 t "x4"
