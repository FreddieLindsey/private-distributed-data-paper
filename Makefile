all: clean open

project: project.tex
	latex -file-line-error -interaction=nonstopmode -synctex=1 $^
	biber $@
	pdflatex -file-line-error -interaction=nonstopmode -synctex=1 $^
	pdflatex -file-line-error -interaction=nonstopmode -synctex=1 $^
	pdflatex -file-line-error -interaction=nonstopmode -synctex=1 $^

clean:
	$(RM) -r **/*.aux **/*.bbl **/*.bcf **/*.blg **/*.dvi **/*.lof **/*.lot **/*.log **/*.run.xml **/*.synctex.gz **/*.toc .texpadtmp
	$(RM) -r *.aux *.bbl *.bcf *.blg *.dvi *.lof *.lot *.log project.pdf *.run.xml *.synctex.gz *.toc

open: project
	open project.pdf

.PHONY: all clean open
