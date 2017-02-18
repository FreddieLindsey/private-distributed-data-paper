CLEAN_EXTENSIONS = .run.xml .fls .bbl .fdb_latexmk

all:
	@./build.sh

clean:
	@./build.sh clean
	@$(RM) -r ${CLEAN_EXTENSIONS:%=*%} ${CLEAN_EXTENSIONS:%=**/*%} 

.PHONY: all
