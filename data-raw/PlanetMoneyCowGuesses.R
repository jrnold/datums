read_csv("data-raw/PlanetMoneyCowGuesses.csv",
         col_types = cols_only(
           guess = col_double()
         ),
         col_names = c("guess", "X2", "X3", "X4", "X5", "X6")) %>%
  mutate(error = 1355 - guess) %>%
  save_data("PlanetMoneyCowGuesses")
