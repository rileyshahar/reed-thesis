all: thesis.pdf

thesis-tufte.pdf: *.tex prelude.tex references.bib reedthesis.cls
	latexmk -pdf -halt-on-error thesis-tufte.tex

thesis.pdf: *.tex prelude.tex references.bib reedthesis.cls
	latexmk -pdf -halt-on-error thesis.tex

.PHONY: clean
clean:
	-rm -f diff.tex
	-rm -f *.snm *.nav *.vrb *.bbl *.dvi *.ps *.lot *.lof *.toc thesis.pdf thesis-tufte.pdf *.run.xml
	latexmk -c
