DOCKER_TAG = freddielindsey/latex:$(shell date +%Y-%m-%d)
DOCKER_LATEST = freddielindsey/latex

all: cleanish interim.pdf

%.pdf: %.tex cleanish
	pdflatex -file-line-error -interaction=nonstopmode -synctex=1 $<
	biber $(*F)
	pdflatex -file-line-error -interaction=nonstopmode -synctex=1 $<
	pdflatex -file-line-error -interaction=nonstopmode -synctex=1 $<

cleanish:
	$(RM) -r **/*.aux **/*.bbl **/*.bcf **/*.blg **/*.dvi **/*.lof **/*.lot **/*.log **/*.run.xml **/*.synctex.gz **/*.toc .texpadtmp **/*.out
	$(RM) -r *.aux *.bbl *.bcf *.blg *.dvi *.lof *.lot *.log *.run.xml *.synctex.gz *.toc *.out

clean:
	$(RM) project.pdf interim.pdf

.PHONY: all clean
