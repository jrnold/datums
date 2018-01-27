require("tidyverse")
data("VoxPopuli")

# Original plot with the observed distribution compared to
# a normal distribution with mean 1207 and standard deviation 25.
mutate(VoxPopuli,
       quantile = quantile / 100) %>%
  gather(distribution, value, -quantile) %>%
  mutate(distribution = recode(distribution,
                               observed = "Observations",
                               normal = "Normal(1207, 25^2)")) %>%
  ggplot(aes(y = value, colour = distribution,
             x = quantile)) +
  geom_hline(yintercept = 1207, colour = "white", size = 2) +
  geom_point() +
  geom_line() +
  labs(y = "Estimates", x = "Quantiles", color = "") +
  theme(legend.position = "bottom")

# Original table
transmute(VoxPopuli,
  `Quantiles` = quantile,
  `Estimates in lbs` = estimate,
  `Observed Deviates from 1207 lbs` = estimate - 1207,
  `Normal p.e. = 37` = normal - 1207,
  `Excess Observed over Normal` = estimate - normal
)
