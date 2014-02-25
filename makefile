ITSLFile := papers/IntroductionToStatisticalLearning.pdf
ESLFile := papers/ElementsOfStatisticalLearning.pdf

all : ${ITSLFile} ${ESLFile}

papers : 
	mkdir papers

${ITSLFile} : | papers
	curl -o ${ITSLFile} http://www-bcf.usc.edu/~gareth/ISL/ISLR%20First%20Printing.pdf

${ESLFile} : | papers
	curl -o ${ESLFile} http://www.stanford.edu/~hastie/local.ftp/Springer/OLD/ESLII_print4.pdf

.PHONY: clean

clean : 
	rm -r papers

