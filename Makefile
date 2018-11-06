clean:
	rm -f *.aux *.lof *.log *.lol *.lot *.out *.toc *.bbl *.blg *.pdf
	( cd tex; rm -f *.aux )
pdf: clean
	pdflatex test.tex
	bibtex test.aux
	pdflatex test.tex
	pdflatex test.tex
