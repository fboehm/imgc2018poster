PDF_FILE=Rmd/*.pdf

HTML_FILE=Rmd/*.html

RMD_FILE=Rmd/*.Rmd

all : $(PDF_FILE)
	echo All files are now up to date.

$(PDF_FILE) : $(HTML_FILE)
	decktape remark $(HTML_FILE) $(PDF_FILE)

$(HTML_FILE) : $(RMD_FILE) 
	Rscript -e 'rmarkdown::render("$<")'
	
.PHONY : clean
clean : 
	- rm $(PDF_FILE) $(HTML_FILE)
	
