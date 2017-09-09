all: mishrak_Y8111018_thesis.pdf

mishrak_Y8111018_thesis.pdf: mishrak_Y8111018_thesis.tex FirstFewPages/MyAbstract.tex FirstFewPages/MyAcknowledgement.tex FirstFewPages/MyDedication.tex FirstFewPages/MyTitle.tex Chapters/Introduction.tex Chapters/PropMethod.tex Chapters/BDCPMproblem.tex Chapters/GTproblem.tex  Chapters/OtherProb.tex Chapters/Conclusion.tex mishrak.bib
	pdflatex --halt-on-error mishrak_Y8111018_thesis.tex
	bibtex mishrak_Y8111018_thesis
	pdflatex --halt-on-error mishrak_Y8111018_thesis.tex
	pdflatex --halt-on-error mishrak_Y8111018_thesis.tex

finalppt.pdf: finalppt.tex
	pdflatex --halt-on-error finalppt.tex
	# bibtex finalppt
	pdflatex --halt-on-error finalppt.tex
	pdflatex --halt-on-error finalppt.tex

clean:
	cp mishrak_Y8111018_thesis.pdf bkup/
	# cp finalppt.pdf bkup/
	rm -rf mishrak_Y8111018_thesis.dvi
	rm -rf mishrak_Y8111018_thesis.log
	rm -rf mishrak_Y8111018_thesis.aux
	rm -rf mishrak_Y8111018_thesis.out
	rm -rf mishrak_Y8111018_thesis.blg
	rm -rf mishrak_Y8111018_thesis.bbl
	rm -rf mishrak_Y8111018_thesis.lot
	rm -rf mishrak_Y8111018_thesis.lof
	rm -rf finalppt.log
	rm -rf finalppt.nav
	rm -rf finalppt.aux
	rm -rf finalppt.out
	rm -rf finalppt.snm
	rm -rf finalppt.toc

clean_all: clean
 