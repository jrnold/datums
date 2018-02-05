ggplot(datasets, aes(x = x, y = y)) +
  geom_point() +
  facet_wrap(~ .id, nrow = 3, scales = "free")

# Correlations of the datasets
datasets %>%
  group_by(dataset) %>%
  summarise(cor = as.character(round(if (sd(y) > 1e-15) cor(x, y) else NA_real_, 1))) %>%
  print(n = 21)
