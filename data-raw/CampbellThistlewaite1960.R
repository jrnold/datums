read_csv("data-raw/CampbellThistlewaite1960.csv",
         col_types = cols(
           certificate_of_merit = col_integer(),
           test_score = col_character(),
           merit_scholars = col_integer(),
           number_in_sample = col_integer(),
           number_respondents = col_integer(),
           scholarship = col_double(),
           scholarship_150 = col_double(),
           graduate_study = col_double(),
           teacher_researcher = col_double(),
           intellectualism = col_double()
         )) %>%
  save_data("CampbellThistlewaite1960")
