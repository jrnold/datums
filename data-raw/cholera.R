# TODO: right now only uses Table XII reproduced in mastering metrics
# This does not have populations in each district.
#
# Get and combine original tables from https://play.google.com/books/reader?id=-N0_AAAAcAAJ
#
# -  Table V. p. 71
# -  Table VI. p. 73
# -  Table VII, VIII
# -  Table XII
#
read_csv("data-raw/cholera.csv", na = "",
         col_types = cols(
           sub_district = col_character(),
           cholera_1849 = col_integer(),
           cholera_1854 = col_integer(),
           company = col_character(),
           note = col_character()
         )) %>%
  save_data("cholera")
