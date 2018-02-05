read_csv(here::here("data-raw", "davenant.csv"),
         col_types =
         cols(
          quantity = col_double(),
          price = col_double(),
          fitted = col_double()
        )) %>%
  save_data("davenant")
