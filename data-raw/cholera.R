read_csv("data-raw/cholera.csv", na = "",
         col_types = cols(
           sub_district = col_character(),
           cholera_1849 = col_integer(),
           cholera_1854 = col_integer(),
           company = col_character(),
           note = col_character()
         )) %>%
  save_data("cholera")
