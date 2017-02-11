col_types <- cols(
  county = col_character(),
  `1876` = col_integer(),
  `1877` = col_double(),
  `1878` = col_integer(),
  `1879` = col_integer(),
  `1880` = col_double(),
  `1881` = col_integer(),
  `1882` = col_integer(),
  `1883` = col_integer(),
  sums = col_integer(),
  means = col_double(),
  fluctuations = col_double()
)

read_csv("data-raw/countydeaths.csv",
         col_types = col_types, na = "") %>%
  filter(!county %in% c("sums", "means", "fluctuations")) %>%
  select(-sums, -means, -fluctuations) %>%
  gather(year, death_rate, -county) %>%
  mutate(year = as.integer(year)) %>%
  save_data("countydeaths")
