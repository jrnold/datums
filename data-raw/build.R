library("tidyverse")
library("assertthat")
source("data-raw/common.R")

dir.create(here::here("data"), showWarnings = FALSE)
exclude_scripts <- c("common.R", "build.R")
scripts <- setdiff(dir("data-raw", pattern = "\\.R$"), exclude_scripts)
for (script in scripts) {
  source(file.path('data-raw', script))
}
devtools::check()
