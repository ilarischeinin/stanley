NHL Stanley Cup Playoff Predictions
===================================

This repository contains a set of scripts to make machine learning predictions
for the Stanley Cup Playoffs. The process is split to five separate
[R Markdown](http://rmarkdown.rstudio.com) documents for:

1. [Scrape raw data][1]
2. [Process data][2]
3. [Train models][3]
4. [Make predictions][4]

A Makefile is also included to compile all four documents. And if one of the
source files is modified, to repeat only the affected parts of the analysis.

In principle one can reproduce the entire analysis simply by running `make`.
However, please note that by default the data scraping will take more than 3.5
days to complete, and more feasible options are listed in the scraping document.

[1]: https://cdn.rawgit.com/ilarischeinin/stanley/0126954/scrape.html
[2]: https://cdn.rawgit.com/ilarischeinin/stanley/0126954/process.html
[3]: https://cdn.rawgit.com/ilarischeinin/stanley/0126954/model.html
[4]: https://cdn.rawgit.com/ilarischeinin/stanley/0126954/predict.html
