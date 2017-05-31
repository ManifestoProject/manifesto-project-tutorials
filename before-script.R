library(tibble)
library(manifestoR)
library(ggplot2)
library(tidytext)
library(SnowballC)
library(manifestorita)
library(labelled)
library(haven)
library(DT)
library(labelled)

mp_setapikey("manifesto_apikey.txt")
mp_use_corpus_version("2016-6")

mpds <- mp_maindataset(version ="2016b")

de <- mp_corpus(countryname == "Germany" & date == 201309)

all_labels <- read_dta(mp_maindataset(download_format="dta")) %>%
  var_label() %>%
  unlist() %>%
  as_data_frame() %>%
  rownames_to_column(var = "variable")

cmp_labels <- all_labels %>% filter(str_detect(variable, "per\\d{3}$")) %>% mutate(
  pername = str_sub(variable,start=-3,end=-1)
)

cee_labels <- all_labels %>% filter(str_detect(variable, "per\\d{4}$")) %>% mutate(
  pername = str_sub(variable,start=-4,end=-1)
)

hb5_labels <- all_labels %>% filter(str_detect(variable, "per\\d{3}_")) %>% mutate(
   pername = str_sub(variable,start=-4,end=-1)
  )

dems_extract <- mp_corpus(countryname == "United States" & date == 201211 & party == 61320)[[1]] %>%
  as_data_frame() %>% filter(pos > 275 & pos < 281)
