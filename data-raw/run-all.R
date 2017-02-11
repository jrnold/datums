library("tidyverse")
library("assertthat")
source("data-raw/common.R")
scripts <- setdiff(dir("data-raw", pattern = "\\.R$"),
                   c("common.R", "run-all.R"))
for (script in scripts) {
  source(file.path('data-raw', script))
}
devtools::check()
