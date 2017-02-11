parse_degrees <- function(x) {
  m <- stringr::str_match(x, "(?:(-?\\d+)d)?\\s*(?:(\\d+(\\.\\d*)?)m)?")
  deg <- as.double(m[ , 2])
  mins <- as.double(m[ , 3])
  if_else(is.na(deg), 0, deg) + if_else(is.na(mins), 0, mins) / 60
}

read_csv("data-raw/borough.csv",
         col_types = cols(
             elevation = col_integer(),
             variation_am = col_character(),
             variation_pm = col_character(),
             variation_north = col_character()
         )) %>%
  mutate_at(vars(matches("^variation")), funs(parse_degrees)) %>%
  save_data("borough")
