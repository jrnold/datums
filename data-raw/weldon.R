read_csv("data-raw/weldon.csv",
         col_types = cols(
           n = col_integer(),
           observed = col_integer(),
           theoretical = col_integer(),
           pearson = col_integer()
         )) %>%
  save_data("weldon")
