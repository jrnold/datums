DRAWS_URL <- "https://galton.uchicago.edu/~stigler/draws.txt"
BETS_URL <- "https://galton.uchicago.edu/~stigler/quatbets.txt"

download_if_not_exists <- function(url) {
  dst <- file.path("data-raw", basename(url))
  if (!file.exists(dst)) {
    download.file(url, dst)
  }
}
download_if_not_exists(BETS_URL)
download_if_not_exists(DRAWS_URL)

draws_spec <- cols(
  X1 = col_integer(),
  X2 = col_integer(),
  X3 = col_integer(),
  X4 = col_integer(),
  X5 = col_integer()
)
read_tsv(file.path("data-raw", basename(DRAWS_URL)),
                  col_names = paste0("X", 1:5),
                  col_types = draws_spec) %>%
  save_data("loterie_draws")


bets_spec <- cols(
  X1 = col_integer(),
  X2 = col_integer(),
  X3 = col_integer(),
  X4 = col_integer()
)
read_tsv(file.path("data-raw", basename(BETS_URL)),
                         col_names = paste0("X", 1:4),
                         col_types = bets_spec) %>%
  save_data("loterie_bets")
