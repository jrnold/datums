read_csv("data-raw/average_salary.csv",
         col_types = cols(
           salary = col_double()
         )) %>%
  save_data("average_salary")
