read_csv("data-raw/VoxPopuli.csv",
         col_types = cols(
           quantile = col_double(),
           estimate = col_double(),
           error = col_double(),
           normal = col_double()
         )) %>%
  save_data("VoxPopuli")
