NHL Stanley Cup Playoff Predictions
===================================

This repository contains a set of scripts to make machine learning predictions
for the Stanley Cup Playoffs. The process is split to five separate
[R Markdown](http://rmarkdown.rstudio.com) documents for:

1. [Canadian programming][1]
2. [Scrape raw data][2]
3. [Process data][3]
4. [Train models][4]
5. [Make predictions][5]

A Makefile is also included to compile all five documents. And if one of the
source files is modified, to repeat only the affected parts of the analysis.

In principle one can reproduce the entire analysis simply by running `make`.
However, please note that by default the data scraping will take more than 3.5
days to complete, and more feasible options are listed in the scraping document.

[1]: https://rawgit.com/ilarischeinin/stanley/master/canadian.html
[2]: https://rawgit.com/ilarischeinin/stanley/master/scrape.html
[3]: https://rawgit.com/ilarischeinin/stanley/master/process.html
[4]: https://rawgit.com/ilarischeinin/stanley/master/model.html
[5]: https://rawgit.com/ilarischeinin/stanley/master/predict.html
