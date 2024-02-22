all: diff.pdf

diff.pdf: diff-prelude.tex diff-cryptography.tex diff-category-theory.tex diff-theory.tex *.tex diff-reedthesis.cls diagrams.tex references.bib
	latexmk -pdf -halt-on-error diff.tex

diff-%: ../old/writeup/% ../writeup/%
	latexdiff --add-to-config PICTUREENV=pic ../old/writeup/$* ../writeup/$* > $@

.PHONY: clean
clean:
	-rm -f *.snm *.nav *.vrb *.bbl *.dvi *.ps *.lot *.lof *.toc diff.pdf diff-*.tex *.run.xml
	latexmk -c
