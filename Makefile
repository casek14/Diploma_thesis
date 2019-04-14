clean:
	rm -f *.aux *.lof *.log *.lol *.lot *.out *.toc *.bbl *.blg *.pdf *.lyx
	( cd tex; rm -f *.aux *.lyx)
pdf: clean
	pdflatex test.tex
	bibtex test.aux
	pdflatex test.tex
