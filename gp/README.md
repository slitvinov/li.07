# gnuplot

    set view equal xyz
	f=tools/test_data/solvent-00010.bop
    splot f binary format="%float %float %float %float %float %float" u 1:2:3 w dots
