all:
	pdflatex --shell-escape main.tex
	bibtex main 
	pdflatex --shell-escape main.tex
	pdflatex --shell-escape main.tex
abstract:
	pdflatex --shell-escape umiabstract.tex

clean:
	rm -rf *.out *.aux *.bbl *.blg *.pdf *.log  *.lot *.lof *.toc *.dvi  *~ 
	rm -rf prelude/*.aux intro/*.aux related/*.aux drivesense/*.aux ecodrive/*.aux rtdrive/*.aux conc/*.aux prelude/*~ intro/*~ ecodrive/*~ rtdrive/*~ conc/*~
show:
	evince main.pdf
