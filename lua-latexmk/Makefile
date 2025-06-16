.PHONY: all
all: main.pdf ## タイプセットする

main.pdf: main.ltx body.ltx
	latexmk main.ltx

.PHONY: clean
clean: ## 生成された中間ファイルを削除する
	latexmk -c main.ltx
	rm -f main.bbl | echo
	rm -f *_bibertool.bib
	rm -rf _minted*
	rm -f cite.bib.blg | echo
	rm -f *.synctex.gz

.PHONY: checkbib
checkbib: ## cite.bib を検証する
	biber --tool --validate_datamodel cite.bib

.PHONY: help
help: ## Prints help for targets with comments
	@cat $(MAKEFILE_LIST) | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

