#' Stigler's data on eponymic pratices of 80 texts on the normal distribution
#' From
#' > Stephen M. Sigler. 1999. "Statistics on the Table: The History of Statistical Concepts and Methods." Harvard. Table 14.1 "Data on Eighty book's eponymic practices ...", p. 287. (3rd priting paperback)
#'
read_csv("data-raw/eponymns.csv",
         col_types = cols(
           year = col_integer(),
           country = col_character(),
           gaussian = col_logical(),
           laplace = col_logical(),
           noneponymic = col_logical()
         )) %>%
  mutate_at(vars(gaussian, laplace, noneponymic), funs(!is.na(.))) %>%
  save_data("eponymns")
