NHL Stanley Cup Playoff Predictions
===================================

This repository contains scripts to make predictions for Stanley Cup Playoffs.
The process is split to five separate
[R Markdown](http://rmarkdown.rstudio.com) documents for:

1. prerequisites
2. data scraping
3. preprocessing
4. model training
5. final predictions

A Makefile is also included to compile all five documents. In principle one can
reproduce the entire analysis simply by running `make`. However, please note
that by default the data scraping will take more than 3.5 days to complete, and
more feasible options are listed in the scraping document.
