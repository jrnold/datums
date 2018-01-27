read_csv("data-raw/nonsense.csv",
         col_types = cols(
           year = col_integer(),
           radio_licenses = col_double(),
           mental_defectives = col_integer(),
           president = col_character()
         )) %>%
  save_data("nonsense")
