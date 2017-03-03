read_lines("http://www.liquidasset.com/winedata.html") %>%
  str_subset("^\\s+([0-9]{1,2}|OBS)\\s+") %>%
  str_c(collapse = "\n") %>%
  read_table(col_types = cols_only(
    VINT = col_integer(),
    LPRICE2 = col_double(),
    WRAIN = col_integer(),
    DEGREES = col_double(),
    HRAIN = col_integer(),
    TIME_SV = col_integer()
  ), na = ".") %>%
  rename_map(str_to_lower) %>%
  mutate(price = exp(lprice2) * 100) %>%
  select(-lprice2) %>%
  select(vint, price, everything()) %>%
  save_data("bordeaux")

