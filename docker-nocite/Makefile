.SECONDARY:

#LATEX = texfot lualatex
LATEX = lualatex
LATEX_FLAGS = -shell-escape -halt-on-error -file-line-error -file-line-error

SOURCE = main

.PHONY: help
help: ## Prints help for targets with comments
	@cat $(MAKEFILE_LIST) | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: once
once: $(SOURCE).ltx LT_MD5_CACHE.txt ## 1回だけタイプセットする
	docker run --rm -it -v miktex:/var/lib/miktex -v "$(CURDIR):/miktex/work" miktex/miktex:essential bash -c \
		"$(LATEX) $(LATEX_FLAGS) $(SOURCE).ltx"

.PHONY: all
all: $(SOURCE).ltx Makefile ## 完成品のPDFを作る
	docker run --rm -it -v miktex:/var/lib/miktex -v "$(CURDIR):/miktex/work" miktex/miktex:essential bash -c \
		"$(LATEX) $(LATEX_FLAGS) $(SOURCE).ltx && \
	 	 $(LATEX) $(LATEX_FLAGS) $(SOURCE).ltx"

.PHONY: clean
clean: ## 生成された中間ファイルを削除する
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
	rm -f $(SOURCE)_desc.aux | echo
	rm -f $(SOURCE).xmpdata | echo
	rm -f $(BIB)_bibertool.bib | echo
	rm -f $(BIB).bib.blg | echo
	rm -f texput.log | echo
	rm -rf _minted*

.PHONY: clean-all
clean-all: ## 生成されたPDFファイルを削除する
	rm -f $(SOURCE).pdf | echo
