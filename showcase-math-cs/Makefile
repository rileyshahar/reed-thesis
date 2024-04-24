main.pdf: *.tex
	latexmk -pdf -lualatex --shell-escape -halt-on-error main.tex

clean:
	-rm -f *.snm *.nav *.vrb *.bbl *.dvi *.ps *.pdf *.run.xml
	latexmk -c
