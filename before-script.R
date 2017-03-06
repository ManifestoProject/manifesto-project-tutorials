library(manifestoR)
library(ggplot2)
library(manifestorita)
mp_setapikey("manifesto_apikey.txt")
mp_use_corpus_version("2016-6")

mpds <- mp_maindataset(version ="2016b")


