library("assertthat")
library("stringr")
library("tidyverse")
library("rubbish")
library("here")
library("glue")

parse_degrees <- function(x) {
  m <- stringr::str_match(x, "(?:(-?\\d+)d)?\\s*(?:(\\d+(\\.\\d*)?)m)?")
  deg <- as.double(m[ , 2])
  mins <- as.double(m[ , 3])
  if_else(is.na(deg), 0, deg) + if_else(is.na(mins), 0, mins) / 60
}

comment_lines <- function(x) {
  x <- str_trim(unlist(str_split(x, "\n")))
  str_c("#' ", x, collapse = "\n")
}

rd_tab_df <- function(x, align = NULL, use_header = TRUE) {
  align <- align %||% str_c(rep("l", length(x)), collapse = "")
  rows <-
    pmap(x, list) %>%
    map_chr(str_c, collapse = " \\tab ") %>%
    str_c(collapse = " \\cr\n")
  header <- if (use_header) {
     str_c(str_c(names(x), collapse = " \\tab "), " \\cr\n")
  } else {
     ""
  }
  glue("\\tabular{{{align}}}{{\n{header}{rows} \\cr\n}}")
}

format_df <- function(x, descriptions) {
  nm1 <- names(x)
  nm2 <- names(descriptions)
  if (!isTRUE(all.equal(nm1, nm2))) {
    stop(glue("Variables in data do not match metadata descriptions:\n",
              "Data: {str_c(nm1, collapse = ', ')}\nDescriptions: {str_c(nm2, collapse = ', ')}\n"))
  }

  varclasses <- map(x, class) %>%
    map_chr(~ str_c('\"', .x, '\"', collapse = ", ")) %>%
    str_c("\\code{", ., "}")

  vartable <-
    tibble(name = str_c("\\code{", names(x), "}"),
           type = varclasses,
         description = unname(descriptions)) %>%
    rd_tab_df()
  glue("A data frame with {nrow(x)} rows and {ncol(x)} columns.\n\n{vartable}")
}

add_tag <- function(nm, metadata) {
  if (!is_empty(metadata[[nm]])) {
    str_c("@", nm, " ", metadata[[nm]])
  }
}

doc_str <- function(name) {
  data_file <- here::here("data", str_c(name, ".rda"))
  .envir <- rlang::new_environment()
  load(data_file, envir = .envir)
  metadata_file <- here::here("data-raw", str_c(name, ".yaml"))
  metadata <- yaml::yaml.load_file(metadata_file)

  metadata[["name"]] <- name

  exfile <- here::here("examples", "ex-{name}.R")
  metadata[["example"]] <- if (file.exists(exfile)) {
     exfile
  }

  descriptions <-
    set_names(map_chr(metadata[["variables"]], "description"),
            map_chr(metadata[["variables"]], "name"))

  if (!"format" %in% names(metadata)) {
    metadata[["format"]] <- if (is.data.frame(.envir[[name]])) {
      format_df(.envir[[name]], descriptions)
    }
  }

  if (!is.null(metadata[["references"]])) {
    metadata[["references"]] <- str_c(metadata[["references"]], sep = "\n\n")
  }

  tags <- c("format", "source", "references", "example",
            "examples", "seealso") %>%
    map(add_tag, metadata = metadata) %>%
    compact() %>%
    flatten_chr() %>%
    str_c(collapse = "\n\n")

  str_c(metadata[["title"]],
        metadata[["description"]],
        metadata[["values"]],
        tags,
        sep = "\n\n") %>%
    # remove multiline para
    str_replace_all("\n{2,}", "\n\n") %>%
    str_trim() %>%
    str_split("\n") %>%
    pluck(1) %>%
    str_c("#' ", ., collapse = "\n") %>%
    str_c(glue('"{name}"'), sep = "\n")

}

save_data <- function(data, name) {
  env <- new.env(parent = emptyenv())
  env[[name]] <- data
  print(ls(env))
  save(list = name, envir = env,
       file = here::here("data", str_c(name, ".rda")),
       compress = "bzip2")
  doc_file <- here::here("R", str_c(name, ".R"))
  cat(doc_str(name), file = doc_file)
}
