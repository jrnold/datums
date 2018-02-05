require("tidyverse")
data("davenant")

# Plot values (dots) and Jevon's fitted line
ggplot(davenant, aes(x = quantity)) +
  geom_point(mapping = aes(y = price)) +
  geom_line(mapping = aes(y = fitted))

# Jevon's values of a = 0.824, b = 0.12
# is close to the Nonlinear least squares solution
price <- function(par) {
  est <- par[1] / (par[2] - davenant$quantity) ^ 2
  sum((davenant$price - est) ^ 2)
}
nlpar <- optim(c(0, 0), price)
nlpar$par

# The third difference is constant
base::diff(davenant$price, differences = 3)
