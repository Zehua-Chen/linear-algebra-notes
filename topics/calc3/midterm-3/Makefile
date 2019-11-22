BIN=bin

all: $(BIN)/index.pdf

$(BIN):
	mkdir $(BIN)

$(BIN)/index.pdf: index.tex $(wildcard topics/*.tex) $(wildcard config/*.tex) $(BIN)
	pdflatex -output-directory=$(BIN) $<

.PHONY: open

open:
	open $(BIN)/index.pdf