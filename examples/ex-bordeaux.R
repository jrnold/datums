data("bordeaux")

# Regression of the logarithm of the average vintage price of wine relative to 1961
# on winter rain, average temperature, harvest rain and years since vintage
summary(lm(log(price) ~ wrain + degrees + hrain + time_sv, data = bordeaux))
