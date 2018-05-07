URL <- "https://www.rand.org/content/dam/rand/pubs/monograph_reports/MR1418/MR1418.deviates.txt.zip"
OUTDIR <- file.path("data-raw", "downloads")
OUTFILE <- file.path(OUTDIR, basename(URL))

dir.create(OUTDIR, showWarnings = FALSE)

if (!file.exists(OUTFILE)) {
  httr::GET(URL, write_disk(OUTFILE))
}

read_table(unz(OUTFILE, "deviates.txt"),
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
  gather(column, deviate, -block) %>%
  arrange(block, column) %>%
  # negative sign at the end of each number
  mutate(deviate = str_replace(str_trim(deviate), "^([0-9.]+)(-?)$", "\\2\\1")) %>%
  pluck("deviate") %>%
  as.numeric() %>%
  save_data("normal_deviates")
