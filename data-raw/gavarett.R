read_csv("data-raw/gavarett.csv",
                     col_types = cols(
                       female = col_integer(),
                       legitimate = col_integer(),
                       count = col_integer()
                     )) %>% save_data("gavarett")
