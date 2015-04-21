all: canadian.html scrape.html process.html model.html predict.html
.PHONY : all scrape clean distclean

canadian.html: canadian.Rmd canadian.R
	Rscript -e "rmarkdown::render('canadian.Rmd')"

scrape.html: scrape.Rmd
	Rscript -e "rmarkdown::render('scrape.Rmd')"
	
scrape:
	Rscript -e "rmarkdown::render('scrape.Rmd')"

process.html: process.Rmd source-data/nhlscrapr-core.RData canadian.R
	Rscript -e "rmarkdown::render('process.Rmd')"

model.html: model.Rmd processed.rds canadian.R
	Rscript -e "rmarkdown::render('model.Rmd')"

predict.html: predict.Rmd models.rds canadian.R
	Rscript -e "rmarkdown::render('predict.Rmd')"

clean:
	rm -f *.html
	rm -f *.rds

distclean: clean
	rm -rf nhlr-data
	rm -rf source-data
