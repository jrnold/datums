require("tidyverse")
data("delhiwheat")

# Merge with sunspot data
delhiwheat <-
  left_join(delhiwheat,
            tibble(sunspots = as.numeric(sunspot.year),
                   year = as.integer(time(sunspot.year))),
            by = "year")

# The spuriously correlated time series of Sunspots and the
# Price of Wheat in Deli
select(delhiwheat, year, price, sunspots) %>%
  gather(variable, value, -year) %>%
  mutate(variable = recode(variable,
                           price = "Price of What at Delhi",
                           sunspots = "Number of Sunspots")) %>%
  ggplot() +
  geom_line(mapping = aes(x = year, y = value)) +
  facet_wrap(~ variable, ncol = 1, scales = "free_y")

