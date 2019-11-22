PDF = $(BIN)/$(lastword $(patsubst %.tex, %.pdf, $(word 1, $(SRCS))))

all: $(PDF)

$(BIN):
	mkdir $(BIN)

$(PDF): $(SRCS) | $(BIN)
	pdflatex -output-directory=$(BIN) $<

.PHONY: open

open:
	open $(PDF)

.PHONY: info
info:
	@echo PDF $(PDF)
	@echo SRCS $(SRCS)