.PHONY: clean
.PHONY: all
.SECONDARY:

LATEX = uplatex
LATEX_FLAGS = -shell-escape
BIBTEX = pbibtex
BIBTEX_FLAGS =
DVIPDF = dvipdfmx
DVIPDF_FLAGS =

SOURCE = main
SUB_SOURCES = 
BIB_FILES = cite.bib

all: $(SOURCE).pdf Makefile ## Create PDF

clean: ## Clean latex intermediary files
	rm -f *.aux
	rm -f *.log
	rm -f *.bbl
	rm -f *.blg

clean-all: clean ## Clean all intermediary files including .dvi, and .pdf
	@#https://ir9ex.hatenablog.jp/entry/20121206/1354774247
	rm -f $(SOURCE).dvi | echo
	rm -f $(SOURCE).pdf | echo
	rm -f $(SOURCE)-cover.pdf | echo

%.pdf: %.ltx $(SUB_SOURCES:%=%.ltx)
	$(LATEX) $(LATEX_FLAGS) $*.ltx
	$(BIBTEX) $(BIBTEX_FLAGS) $*
	$(LATEX) $(LATEX_FLAGS) $*.ltx
	$(LATEX) $(LATEX_FLAGS) $*.ltx
	$(DVIPDF) $(DVIPDF_FLAGS) $*

help: ## Prints help for targets with comments
	@cat $(MAKEFILE_LIST) | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

