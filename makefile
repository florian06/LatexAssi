FILE=intro

all :
	latex -interaction=nonstopmode $(FILE).tex
	bibtex $(FILE).aux
	latex -interaction=nonstopmode $(FILE).tex 
	latex -output-format=pdf $(FILE).tex 
#	pdflatex $(FILE).tex
clean :
	rm -f $(FILE).aux $(FILE).bbl $(FILE).blg $(FILE).dvi $(FILE).lof $(FILE).log $(FILE).pdf $(FILE).toc
  
