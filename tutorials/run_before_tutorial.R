
library(tibble)
library(manifestoR)
library(ggplot2)
library(tidytext)
library(SnowballC)
library(manifestorita)
library(labelled)
library(haven)
library(shiny)
library(DT)
library(labelled)
library(readxl)
library(pander)

mp_setapikey("manifesto_apikey.txt")

corpus_version <- "2017-2"
mpds_version <- "2017b"

mp_use_corpus_version(corpus_version)
mpds <- mp_maindataset(version = mpds_version)
de_corp <- mp_corpus(countryname == "Germany" & date == 201709)
greens_corpus <- mp_corpus(countryname=="Germany" & date == 200509 & party == 41113)
corpus_metadata <- mp_metadata(TRUE)
