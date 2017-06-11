read_csv("data-raw/skulls.csv",
         col_types = cols(
           sex = col_character(),
           n = col_integer(),
           correlation = col_double(),
           probable_error = col_double()
         )) %>%
  save_data("skulls")
