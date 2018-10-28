# imgc2018poster
materials for International Mammalian Genetics Conference 2018

## Poster logistics

I'm poster number 6. I need to be at the poster itself to present on Tuesday Nov 13 at 4 to 6pm. 

> The poster boards are 40 in wide and 60in  tall. Your poster will be on display for the duration of the meeting



## A note on the Makefile

I haven't yet found a way to automate the conversion from html to pdf for this poster-sized file. For now, I open the html file in Google Chrome browser and print to pdf from it.

I can almost get google chrome from the command line to work. It is just failing to render math correctly.

/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary --headless --disable-gpu --print-to-pdf imgc-2018-poster/imgc-2018-poster.html

The above produces a pdf but without correct math rendering. It's as if we need to 'wait' for the math rendering or add option to use mathjax.

## Makefile update

I started using decktape, but I can't seem to get the pdf to be the right size. I may just need to manually print from google chrome.

## Makefile update again

I changed the zoom parameter in the page.css file and retried the make. It worked!!

I set zoom to 1 instead of the default 0.33.

