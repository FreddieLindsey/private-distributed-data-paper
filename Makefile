clean:
	$(RM) -r **/*.aux **/*.bbl **/*.bcf **/*.blg **/*.dvi **/*.lof **/*.lot **/*.log **/*.run.xml **/*.synctex.gz **/*.toc .texpadtmp **/*.out
	$(RM) -r *.aux *.bbl *.bcf *.blg *.dvi *.lof *.lot *.log *.run.xml *.synctex.gz *.toc *.out
	$(RM) project.pdf interim.pdf

.PHONY: clean
