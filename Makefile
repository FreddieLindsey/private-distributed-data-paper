all:
	@./build.sh

clean:
	@./build.sh clean
	$(RM) -r *.run.xml *.fls *.bbl

.PHONY: all
