read_csv("data-raw/VoxPopuli.csv",
         col_types = cols(
           quantile = col_double(),
           estimate = col_double(),
           observed = col_double(),
           normal = col_double(),
           excess = col_double()
         )) %>%
  mutate(normal = 1207 + normal) %>%
  select(-observed, -excess) %>%
  save_data("VoxPopuli")
