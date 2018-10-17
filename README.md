# imgc2018poster
materials for International Mammalian Genetics Conference 2018





## A note on the Makefile

I haven't yet found a way to automate the conversion from html to pdf for this poster-sized file. For now, I open the html file in Google Chrome browser and print to pdf from it.

I can almost get google chrome from the command line to work. It is just failing to render math correctly.

/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary --headless --disable-gpu --print-to-pdf imgc-2018-poster/imgc-2018-poster.html

The above produces a pdf but without correct math rendering. It's as if we need to 'wait' for the math rendering or add option to use mathjax.

