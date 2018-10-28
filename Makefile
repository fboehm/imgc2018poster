HTML_FILE=imgc-2018-poster/imgc-2018-poster.html

RMD_FILE=imgc-2018-poster/imgc-2018-poster.Rmd

PDF_FILE=imgc-2018-poster.pdf 

CSS_FILE=imgc-2018-poster/custom.css

all : $(PDF_FILE) 
	echo All files are now up to date.


	
$(HTML_FILE) : $(RMD_FILE) $(CSS_FILE)
	Rscript -e 'rmarkdown::render("$<")'

$(PDF_FILE) : $(HTML_FILE)
	decktape -s '8000x10000' $(HTML_FILE) $(PDF_FILE)
	
.PHONY : clean
clean : 
	- rm $(HTML_FILE) $(PDF_FILE)
	
