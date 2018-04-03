install.packages("manifestoR", repos="https://cloud.r-project.org")
install.packages("bookdown", repos="https://cloud.r-project.org")
install.packages("labelled", repos="https://cloud.r-project.org")
install.packages("jsonlite", repos="https://cloud.r-project.org")
install.packages("formatR", repos="https://cloud.r-project.org")
install.packages("knitr", repos="https://cloud.r-project.org")
install.packages("labelled", repos="https://cloud.r-project.org")
install.packages("RefManageR", repos="https://cloud.r-project.org")

library(jsonlite)
library(httr)
library(manifestoR)
library(bookdown)
library(rmarkdown)
library(shiny)
library(labelled)
library(RefManageR)
mp_setapikey(key.file = "manifesto_apikey.txt")

#bib <- ReadZotero(group = "340777", .params=list())
#WriteBib(bib, file="refs.bib")

#PrintBibliography(bib, .opts = list(style="markdown",bib.style="authoryear"))

  # https://api.zotero.org/groups/340777/collections/XSHD2AJP/items?format=bibtex
render_site(output_format = "bookdown::gitbook", encoding = "UTF-8")
