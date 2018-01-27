library("tidyverse")
data("weldon")

# Plot of the obeserved number vs. theoretical values
gather(weldon, variable, value, -n) %>%
  ggplot(aes(x = n, y = value, color = variable)) +
  geom_line() +
  geom_point() +
  scale_x_continuous(breaks = seq(0, 12, by = 2)) +
  theme(legend.position = "bottom")

# The difference between observed and theoretical values
mutate(weldon,
       theoretical = observed - theoretical,
       pearson = observed - pearson) %>%
  select(-observed) %>%
  gather(variable, value, -n) %>%
  ggplot(aes(x = n, y = value, color = variable)) +
  geom_line() +
  geom_point() +
  scale_x_continuous(breaks = seq(0, 12, by = 2)) +
  theme(legend.position = "bottom")
