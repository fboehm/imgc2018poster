HTML_FILE=imgc-2018-poster/imgc-2018-poster.html

RMD_FILE=imgc-2018-poster/imgc-2018-poster.Rmd

all : $(HTML_FILE)
	echo All files are now up to date.


	
$(HTML_FILE) : $(RMD_FILE) 
	Rscript -e 'rmarkdown::render("$<")'
	
.PHONY : clean
clean : 
	- rm $(HTML_FILE)
	
