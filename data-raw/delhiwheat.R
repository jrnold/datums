read_csv("data-raw/delhiwheat.csv",
         col_types = cols(
           year = col_integer(),
           price = col_integer(),
           maximum = col_integer(),
           crisis = col_integer()
         )) %>%
  mutate_at(vars(maximum, crisis), funs(!is.na(.))) %>%
  save_data("delhiwheat")
