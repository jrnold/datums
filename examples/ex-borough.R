data("borough")

# Table of borough's "observations of the needle"
borough

# Borough reports a value of 11 d. 15 m. (11.25) to 11 d. 20 m. (11.33)
#
# Mean, median, and mid-range values of the variation
mean(borough$variation_north)
median(borough$variation_north)
mean(range(borough$variation_north))

