library("assertthat")
library("stringr")
library("tidyverse")
library("rubbish")

parse_degrees <- function(x) {
  m <- stringr::str_match(x, "(?:(-?\\d+)d)?\\s*(?:(\\d+(\\.\\d*)?)m)?")
  deg <- as.double(m[ , 2])
  mins <- as.double(m[ , 3])
  if_else(is.na(deg), 0, deg) + if_else(is.na(mins), 0, mins) / 60
}

write_doc <- function(name, data) {
  metadata <- yaml::yaml.load_file(file.path("data-raw/",
                                             paste0(name, ".yaml")))
  metadata[["name"]] <- name
  metadata[["description"]] <-
    str_split(metadata[['description']], "\n")[[1]] %>%
    str_trim() %>%
    as.list()
  if (is.data.frame(data)) {
    variables_desc <- map_chr(metadata$variables, "description") %>%
      str_trim()
    assert_that(identical(map_chr(metadata$variables, "name"),
                          names(data)))
    metadata[["variables"]] <-
      pmap(list(x = data, nm = names(data), desc = variables_desc),
           function(x, nm, desc) {
             list(
               name = nm,
               type = paste0(class(x), collapse = ", "),
               description = str_trim(str_c(desc, collapse = " "))
             )
           }) %>% unname
    metadata[["nrow"]] <- nrow(data)
    metadata[["ncol"]] <- ncol(data)
  }
  template <- paste0(readLines("data-raw/template.R.mustache"),
                     collapse = "\n")
  cat(whisker::whisker.render(template, data = metadata),
      file = file.path("R", paste0(name, ".R")))
}

save_data <- function(data, name) {
  env <- new.env(parent = emptyenv())
  env[[name]] <- data
  print(ls(env))
  write_doc(name, data)
  save(list = name, envir = env,
       file = file.path("data", paste0(name, ".rda")),
       compress = "bzip2")
}
