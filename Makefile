all: WissenschaftlicheArbeit.pdf

WissenschaftlicheArbeit.pdf: WissenschaftlicheArbeit.tex \
							 Tex/*.tex \
							 Bib.bib \
							 Ressourcen/*.*
	pdflatex WissenschaftlicheArbeit.tex
	biber WissenschaftlicheArbeit
	makeglossaries WissenschaftlicheArbeit
	pdflatex WissenschaftlicheArbeit.tex

clean:
	rm -rf Ressourcen/*.aux Ressourcen/*.bbl Ressourcen/*.log Ressourcen/*.fls Ressourcen/*.blg
	rm -rf *.acn *.acr *.alg *.aux *.bbl *.bcf *.blg *.dvi *.fdb_latexmk *.fls *.glg *.glo *.gls
	rm -rf *.ist *.lof *.log *.lot *.out *.toc *.xdy

.PHONY: clean