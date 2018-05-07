URL <- "https://www.rand.org/content/dam/rand/pubs/monograph_reports/MR1418/MR1418.digits.txt.zip"
OUTDIR <- file.path("data-raw", "downloads")
OUTFILE <- file.path(OUTDIR, basename(URL))

dir.create(OUTDIR, showWarnings = FALSE)

if (!file.exists(OUTFILE)) {
  httr::GET(URL, write_disk(OUTFILE))
}

read_table(unz(OUTFILE, "digits.txt"),
           col_names = c("block", sprintf("X%02d", 1:10)),
           col_types = cols(
             block = col_character(),
             X01 = col_character(),
             X02 = col_character(),
             X03 = col_character(),
             X04 = col_character(),
             X05 = col_character(),
             X06 = col_character(),
             X07 = col_character(),
             X08 = col_character(),
             X09 = col_character(),
             X10 = col_character()
           )) %>%
  select(-block) %>%
  mutate(digits = str_split(str_c(X01, X02, X03, X04, X05, X06, X07, X08, X09, X10), "")) %>%
  select(digits) %>%
  unnest() %>%
  pluck("digits") %>%
  as.integer() %>%
  save_data("rand_digits")
