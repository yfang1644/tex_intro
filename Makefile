short.pdf: short.tex short.bbl
	xelatex $<

short.bbl: short.aux
	bibtex $<

short.aux: short.tex
	xelatex $<
