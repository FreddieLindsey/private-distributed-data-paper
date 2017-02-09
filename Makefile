DOCKER_TAG = freddielindsey/latex:$(shell date +%Y-%m-%d)
DOCKER_LATEST = freddielindsey/latex

all: interim.pdf
	make cleanish

%.pdf: %.tex cleanish
	pdflatex -file-line-error -interaction=nonstopmode -synctex=1 $(word 1, $^)
	biber $@
	pdflatex -file-line-error -interaction=nonstopmode -synctex=1 $(word 1, $^)
	pdflatex -file-line-error -interaction=nonstopmode -synctex=1 $(word 1, $^)

cleanish:
	$(RM) -r **/*.aux **/*.bbl **/*.bcf **/*.blg **/*.dvi **/*.lof **/*.lot **/*.log **/*.run.xml **/*.synctex.gz **/*.toc .texpadtmp **/*.out
	$(RM) -r *.aux *.bbl *.bcf *.blg *.dvi *.lof *.lot *.log *.run.xml *.synctex.gz *.toc *.out

clean: cleanish
	$(RM) project.pdf interim.pdf

docker:
	docker build -t $(DOCKER_TAG) .
	docker tag $(DOCKER_TAG) $(DOCKER_LATEST)
	docker push $(DOCKER_TAG)
	docker push $(DOCKER_LATEST)

.PHONY: all clean
