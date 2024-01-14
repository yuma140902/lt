.SECONDARY:

#LATEX = texfot lualatex
LATEX = lualatex
LATEX_FLAGS = -shell-escape -halt-on-error -file-line-error -file-line-error
BIBER = biber
BIBER_FLAGS =

SOURCE = main
BIB = cite

.PHONY: help
help: ## Prints help for targets with comments
	@cat $(MAKEFILE_LIST) | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: once
once: $(SOURCE).ltx ## 1回だけタイプセットする
	$(LATEX) $(LATEX_FLAGS) $(SOURCE).ltx

.PHONY: bib
bib: $(BIB).bib ## 文献リストを更新する
	$(BIBER) $(BIBER_FLAGS) $(SOURCE)

.PHONY: all
all: $(SOURCE).ltx $(BIB).bib Makefile ## 完成品のPDFを作る
	$(LATEX) $(LATEX_FLAGS) $(SOURCE).ltx
	$(BIBER) $(BIBER_FLAGS) $(SOURCE)
	$(LATEX) $(LATEX_FLAGS) $(SOURCE).ltx
	$(LATEX) $(LATEX_FLAGS) $(SOURCE).ltx

.PHONY: checkbib
checkbib: ## cite.bibを検証する
	$(BIBER) $(BIBER_FLAGS) --tool --validate_datamodel $(BIB).bib

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

clean-all: clean ## 生成された中間ファイルとPDFファイルを削除する
	@#https://ir9ex.hatenablog.jp/entry/20121206/1354774247
	rm -f $(SOURCE).pdf | echo

