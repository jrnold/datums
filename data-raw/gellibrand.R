read_csv("data-raw/gellibrand.csv",
         col_types = cols(
           afternoon = col_logical(),
           altitude = col_character(),
           azim_mag = col_character(),
           azim_sun = col_character(),
           variation = col_character()
         )) %>%
  mutate_at(vars(-afternoon), funs(parse_degrees)) %>%
  save_data("gellibrand")
