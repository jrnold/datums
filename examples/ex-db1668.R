data("db1668")

# D.B. reported a mean of 1 d. 27

# the mean is
m <- mean(db1668$variation)
# Or in degrees,
m %/% 1
# and minutes
(m %% 1 * 60)
