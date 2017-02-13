install.packages("manifestoR")
install.packages("bookdown")

library(bookdown)
library(manifestoR)

rmarkdown::render_site(output_format = 'bookdown::gitbook', encoding = 'UTF-8')
