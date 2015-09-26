FILE=intro

all :
	-latex -interaction=nonstopmode $(FILE).tex
	bibtex $(FILE).aux
	-latex -interaction=nonstopmode $(FILE).tex 
	-latex -interaction=nonstopmode -output-format=pdf $(FILE).tex
clean :
	-rm $(FILE).aux $(FILE).bbl $(FILE).blg $(FILE).dvi $(FILE).lof $(FILE).log $(FILE).pdf $(FILE).toc
  
