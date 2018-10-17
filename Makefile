HTML_FILE=imgc-2018-poster/imgc-2018-poster.html

RMD_FILE=imgc-2018-poster/imgc-2018-poster.Rmd

PDF_FILE=imgc-2018-poster.pdf 

all : $(PDF_FILE)
	echo All files are now up to date.


	
$(HTML_FILE) : $(RMD_FILE) 
	Rscript -e 'rmarkdown::render("$<")'

$(PDF_FILE) : $(HTML_FILE)
	decktape $(HTML_FILE) $(PDF_FILE)
	
.PHONY : clean
clean : 
	- rm $(HTML_FILE)
	
