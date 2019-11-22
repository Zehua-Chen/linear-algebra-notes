INDEX = index.tex
DEPS = $(wildcard sections/*.tex)

review.pdf: $(INDEX) $(DEPS)
	xelatex $<
	
clean:
	rm -f *.pdf *.out *.fls *.log *.toc
	rm -f *.aux
	rm -f sections/*.aux
	rm -f *.fdb_latexmk 