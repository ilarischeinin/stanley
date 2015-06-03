all: scrape.html process.html model.html predict.html
.PHONY : all scrape clean distclean

scrape.html: scrape.Rmd
	Rscript -e "rmarkdown::render('scrape.Rmd')"
	
process.html: process.Rmd source-data/nhlscrapr-core.RData
	Rscript -e "rmarkdown::render('process.Rmd')"

model.html: model.Rmd processed.rds
	Rscript -e "rmarkdown::render('model.Rmd')"

predict.html: predict.Rmd models.rds
	Rscript -e "rmarkdown::render('predict.Rmd')"

scrape:
	Rscript -e "rmarkdown::render('scrape.Rmd')"

clean:
	rm -f *.html
	rm -f *.rds

distclean: clean
	rm -rf nhlr-data
	rm -rf source-data
