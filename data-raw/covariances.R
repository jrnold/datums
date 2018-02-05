# Derived from the R code associated with https://commons.wikimedia.org/w/index.php?title=File:Correlation_examples2.svg&oldid=130190825
# (CC) Denis Boigelot CC0 1.0 Universal Public Domain Dedication
library("tidyverse")
library("rlang")
set.seed(11162)

mv_normal <- function(rho, n = 800, mu = c(0, 0)) {
  MASS::mvrnorm(n, mu = mu, Sigma = matrix(c(1, rho, rho, 1), ncol = 2),
                       empirical = TRUE) %>%
    as_tibble() %>%
    set_names(c("x", "y"))
}

rotation <- function(X, t) {
  X %*% matrix(c(cos(t), sin(t), -sin(t), cos(t)), ncol = 2)
}

rot_normal <- function(t, rho = 1, n = 200, eps = 1e-15) {
  out <- MASS::mvrnorm(n, mu = c(0, 0),
                       Sigma = matrix(c(1, rho, rho, 1), ncol = 2),
                empirical = TRUE) %>%
    rotation(t) %>%
    as_tibble() %>%
    set_names(c("x", "y"))
  if (t == (base::pi / 4) && rho == 1) {
    out$y <- 0
  }
  out
}

polyfun <- function(n = 1000) {
  tibble(x = runif(n, -1, 1),
         y = 4 * (x ^ 2 - 1 / 2) ^ 2 + runif(n, -1, 1) / 3)
}

rot_square <- function(t, n = 800) {
  x <- runif(n, -1, 1)
  y <- runif(n, -1, 1)
  rotation(cbind(x, y), t) %>%
    as_tibble() %>%
    set_names(c("x", "y"))
}


crescent <- function(n = 800) {
  tibble(
    x = runif(n, -1, 1),
    y = 2 * x ^ 2 + runif(n, -1, 1)
  )
}

double_crescent <- function(n = 800) {
  tibble(x = runif(n, -1, 1),
         y = (x ^ 2 + runif(n, 0, 1/2)) *
              sample(seq(-1, 1, 2), n, replace = TRUE))
}

# unit circle with noise
unit_circle <- function(n = 800, sd = 1 / 8) {
  x <- runif(n, -1, 1)
  tibble(y = cos(x * pi) + rnorm(n, 0, sd),
         x = sin(x * pi) + rnorm(n, 0, sd))
}

# Normal((3, 3), I), Normal((-3, 3), I), Normal((-3, -3), I), Normal((3, -3), I)
four_mvnormals <- function(n = 800) {
  map(list(c(3, 3), c(-3, 3), c(3, -3), c(-3, -3)),
      function(.x) {
        mv_normal(rho = 0, mu = .x, n = n / 4)
      }) %>%
    bind_rows()
}


datasets <-
  ll(splice(map(c(1.0, 0.8, 0.4, 0.0, -0.4, -0.8, -1.0), mv_normal)),
     splice(map(c(0, pi / 12, pi / 6, pi / 4,
                pi / 2 - pi / 6, pi / 2 - pi / 12, pi / 2), rot_normal)),
      polyfun(),
      splice(map(c(-base::pi / 8, -base::pi / 4), rot_square)),
      crescent(),
      double_crescent(),
      unit_circle(),
      four_mvnormals()) %>%
  imap_dfr(~ mutate(.x, dataset = .y)) %>%
  select(dataset, x, y) %>%
  save_data("covariances")
