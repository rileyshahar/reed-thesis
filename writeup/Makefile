all: thesis.pdf


%.pdf: %.tex references.bib reedthesis.cls
	latexmk -pdf -halt-on-error $<

clean:
	-rm -f *.snm *.nav *.vrb *.bbl *.dvi *.ps *.lot *.lof *.toc thesis.pdf
	latexmk -c
