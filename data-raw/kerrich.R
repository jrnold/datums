"data-raw/kerrich.csv" %>%
  read_csv(col_types = cols(
                          tosses = col_integer(),
                          heads = col_integer()
                        )) %>%
  save_data("kerrich")
