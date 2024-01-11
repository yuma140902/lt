.PHONY: clean
.PHONY: clean-all
.PHONY: all
.SECONDARY:

LATEX = lualatex
LATEX_FLAGS = 

SOURCE = main

all: $(SOURCE).pdf Makefile ## Create PDF

clean: ## Clean latex intermediary files
	rm -f $(SOURCE).aux | echo
	rm -f $(SOURCE).lof | echo
	rm -f $(SOURCE).log | echo
	rm -f $(SOURCE).fls | echo
	rm -f $(SOURCE).out | echo
	rm -f $(SOURCE).toc | echo
	rm -f $(SOURCE).fmt | echo
	rm -f $(SOURCE).fot | echo
	rm -f $(SOURCE).cb | echo
	rm -f $(SOURCE).cb2 | echo
	rm -f $(SOURCE).lb | echo
	rm -f $(SOURCE).dvi | echo
	rm -f $(SOURCE).xdv | echo
	rm -f $(SOURCE)-converted-to.* | echo
	rm -f $(SOURCE).bbl | echo
	rm -f $(SOURCE).bcf | echo
	rm -f $(SOURCE).blg | echo
	rm -f $(SOURCE)-blx.aux | echo
	rm -f $(SOURCE)-blx.bib | echo
	rm -f $(SOURCE).run.xml | echo
	rm -rf _minted*

clean-all: clean ## Clean all intermediary files including .dvi, and .pdf
	@#https://ir9ex.hatenablog.jp/entry/20121206/1354774247
	rm -f $(SOURCE).pdf | echo

%.pdf: %.ltx
	$(LATEX) $(LATEX_FLAGS) $*.ltx

help: ## Prints help for targets with comments
	@cat $(MAKEFILE_LIST) | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

