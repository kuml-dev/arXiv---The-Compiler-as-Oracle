MAIN = paper
OUT  = build

.PHONY: all pdf clean watch

all: pdf

pdf:
	latexmk -pdf -interaction=nonstopmode -output-directory=$(OUT) $(MAIN).tex
	@echo "==> $(OUT)/$(MAIN).pdf"

watch:
	latexmk -pdf -pvc -interaction=nonstopmode -output-directory=$(OUT) $(MAIN).tex

clean:
	latexmk -C -output-directory=$(OUT) $(MAIN).tex
	rm -rf $(OUT)
