short.pdf: short.tex short.bbl learncurve.pdf
	xelatex $<

short.bbl: short.aux
	bibtex $<

short.aux: short.tex
	xelatex $<

learncurve.pdf: learncurve.svg
	inkscape $< -D -A $@
