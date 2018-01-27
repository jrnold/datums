# Modern difference in proportions

# Create a matrix with "successes" (males) and "failures" (females)
# for the two groups (legitimate, illegitimate) as
# expected by `prop.test`
x <- spread(gavarett, female, count) %>%
  select(-legitimate) %>%
  as.matrix()

prop.test(x)
