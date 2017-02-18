UPLOAD_FILES = project # interim
CLEAN_EXTENSIONS = .run.xml .fls .bbl .fdb_latexmk

all: ${UPLOAD_FILES:%=%.tex}
	@./build.sh $*

clean:
	@./build.sh clean
	@$(RM) -r ${CLEAN_EXTENSIONS:%=*%} ${CLEAN_EXTENSIONS:%=**/*%}

.PHONY: all
