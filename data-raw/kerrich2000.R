heads <- "data-raw/kerrich2000.txt" %>%
  read_lines() %>%
  str_split("") %>%
  flatten_chr() %>%
  as.integer() %>%
  as.logical()

kerrich2000 <- tibble(
  toss = seq_along(heads),
  heads = heads
) %>%
  save_data("kerrich2000")
