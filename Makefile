M=main
# arguments
a=-interaction=nonstopmode
# tex
t=t/def.tex  t/notheme.tex
i=

$M.pdf: $M.tex $t $i
	pdflatex $a $< && \
	pdflatex $a $<

.PHONY: clean
clean:
	-rm  $M.aux $M.log $M.nav $M.out $M.pdf $M.snm $M.toc