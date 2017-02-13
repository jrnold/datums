library(httr)
library("tidyverse")
library("haven")
library("stringr")
# Tab separated
# URL <- "http://ws.ukdataservice.ac.uk/REST/Download/Download/DSO/7822tab_a9c0bf00b701b5c0dda6e9dbab19d913.zip"
# Stata
URL <- "http://ws.ukdataservice.ac.uk/REST/Download/Download/DSO/7822stata11_4bda01ce1faf9e42c2340e76bc12f386.zip"

dst_dir <- "data-raw/UKDA-7822-stata11"
dst_zip <- file.path("data-raw", basename(URL))
if (!dir.exists(dst_dir)) {
  GET(URL, write_disk(dst_zip, overwrite = TRUE))
  unzip(dst_zip, exdir = "data-raw")
  unlink(dst_zip)
}

col_types <- cols(
  id = col_integer(),
  Union = col_character(),
  Region = col_integer(),
  County = col_integer(),
  Type = col_integer(),
  BoothGroup = col_integer(),
  BoothDensity = col_double(),
  Popn1871_2 = col_integer(),
  MABI71 = col_integer(),
  FABI71 = col_integer(),
  ChABI71 = col_integer(),
  MNotABI71 = col_integer(),
  FNotABI71 = col_integer(),
  ChNotABI71 = col_integer(),
  MABO71 = col_integer(),
  FABO71 = col_integer(),
  ChABO71 = col_integer(),
  MNotABO71 = col_integer(),
  FNotABO71 = col_integer(),
  ChNotABO71 = col_integer(),
  MABI81 = col_integer(),
  FABI81 = col_integer(),
  ChABI81 = col_integer(),
  MNotABI81 = col_integer(),
  FNotABI81 = col_integer(),
  ChNotABI81 = col_integer(),
  MABO81 = col_integer(),
  FABO81 = col_integer(),
  ChABO81 = col_integer(),
  MNotABO81 = col_integer(),
  FNotABO81 = col_integer(),
  ChNotABO81 = col_integer(),
  Popn1881 = col_integer(),
  popratio7181 = col_double(),
  pauper71 = col_double(),
  pauper81 = col_double(),
  paupratio7181 = col_double(),
  outratio71 = col_double(),
  outratio81 = col_double(),
  outratio7181 = col_double(),
  MABI91 = col_integer(),
  FABI91 = col_integer(),
  ChABI91 = col_integer(),
  MNotABI91 = col_integer(),
  FNotABI91 = col_integer(),
  ChNotABI91 = col_integer(),
  MABO91 = col_integer(),
  FABO91 = col_integer(),
  ChABO91 = col_integer(),
  MNotABO91 = col_integer(),
  FNotABO91 = col_integer(),
  ChNotABO91 = col_integer(),
  Popn1881_2 = col_integer(),
  Popn1891 = col_integer(),
  popratio8191 = col_double(),
  pauper91 = col_double(),
  pauper81_2 = col_double(),
  paupratio8191 = col_double(),
  outratio91 = col_double(),
  outratio8191 = col_double(),
  mfab71I = col_double(),
  mfab81I = col_double(),
  mfab91I = col_double(),
  mfab71O = col_double(),
  mfab81O = col_double(),
  mfab91O = col_double(),
  mfnotab71I = col_double(),
  mfnotab81I = col_double(),
  mfnotab91I = col_double(),
  mfnotab71O = col_double(),
  mfnotab81O = col_double(),
  mfnotab91O = col_double(),
  adultchab71I = col_double(),
  adultchab81I = col_double(),
  adultchab91I = col_double(),
  adultchnotab71I = col_double(),
  adultchnotab81I = col_double(),
  adultchnotab91I = col_double(),
  adultchab71O = col_double(),
  adultchab81O = col_double(),
  adultchab91O = col_double(),
  adultchnotab71O = col_double(),
  adultchnotab81O = col_double(),
  adultchnotab91O = col_double(),
  Popn1871 = col_integer(),
  PopnM1871 = col_integer(),
  PopnF1871 = col_integer(),
  M6571 = col_integer(),
  PropM6571 = col_double(),
  F6571 = col_integer(),
  PropF6571 = col_double(),
  PopnM1881 = col_integer(),
  PopnF1881 = col_integer(),
  M6581 = col_integer(),
  PropM6581 = col_double(),
  F6581 = col_integer(),
  PropF6581 = col_double(),
  PopnM1891 = col_integer(),
  PopnF1891 = col_integer(),
  M6591 = col_integer(),
  PropM6591 = col_double(),
  F6591 = col_integer(),
  PropF6591 = col_double()
)

# yule <- read_tsv(file.path(dst_dir, "tab", "yule.tab"),
#                  col_types = col_types) %>%
yule_raw <- read_dta(file.path(dst_dir, "stata11", "yule_ip1.dta"))

name_replacements <-
  names(yule_raw) %>%
  str_replace("(18[789]1)$", "_\\1") %>%
  str_replace("(7181|8191)$", "diff_\\1") %>%
  str_replace("_7181", "_1881") %>%
  str_replace("_8191", "_1891") %>%
  str_replace("((?<!18)[789]1)$", "_18\\1") %>%
  str_replace("(71|81|91)([IO])$", "\\2_18\\1") %>%
  str_replace("(18[789]1)_2$", "2_\\1") %>%
  str_replace("([789]1)_2$", "2_18\\1") %>%
  {set_names(names(yule_raw), .)}

yule <- yule_raw %>%
  mutate_if(is.labelled, compose(as.character, haven::as_factor)) %>%
  mutate_all(as.vector) %>%
  rename_(.dots = name_replacements)


# Poor Law Union - Year data
yule %>%
  gather(variable_year, value, matches("_18\\d{2}$")) %>%
  select(ID, variable_year, value) %>%
  separate(variable_year, c("variable", "year"), convert = TRUE) %>%
  spread(variable, value) %>%
  save_data("yule")

# Poor Law Union data
yule %>%
  select(-matches("_18\\d\\d$")) %>%
  save_data("yule_plu")
