
install.packages("manifestoR")
install.packages("bookdown")

library(manifestoR)
library(bookdown)
library(rmarkdown)

mp_setapikey(key.file = "manifesto_apikey.txt")
render_site(output_format = "bookdown::gitbook", encoding = "UTF-8")
