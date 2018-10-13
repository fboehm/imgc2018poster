PDF_FILE=imgc-2018-poster/imgc-2018-poster.pdf

HTML_FILE=imgc-2018-poster/imgc-2018-poster.html

RMD_FILE=imgc-2018-poster/imgc-2018-poster.Rmd

all : $(PDF_FILE)
	echo All files are now up to date.

$(PDF_FILE) : $(HTML_FILE)
	wkhtmltopdf  $(HTML_FILE) $(PDF_FILE)
	
$(HTML_FILE) : $(RMD_FILE) 
	Rscript -e 'rmarkdown::render("$<")'
	
.PHONY : clean
clean : 
	- rm $(PDF_FILE) $(HTML_FILE)
	
