require("tidyverse")
data("CampbellThistlewaite1960")

# Figures from the Campbell and Thistelwaite (1960)
filter(CampbellThistlewaite1960,
       test_score %in% as.character(1:20)) %>%
  mutate(test_score = as.integer(test_score)) %>%
  select(test_score, certificate_of_merit,
         scholarship, scholarship_150, graduate_study,
         teacher_researcher, intellectualism) %>%
  gather(variable, value, -test_score, -certificate_of_merit) %>%   mutate(variable = factor(variable,
                           levels = c("scholarship",
                                      "scholarship_150",
                                      "graduate_study",
                                      "teacher_researcher",
                                      "intellectualism"),
                           labels = c(
                             "Percent winning scholarship",
                             "Percent winning scholarship\nof $150 or more",
                             "Percent planning to do three or more\nyears of graduate study (PhD or MD)",
                             "Percent planning to be a college \nteacher or scientific researcher",
                             "Mean score on intellectualism scale"))) %>%

  ggplot(aes(x = test_score, y = value, group = certificate_of_merit)) +
  facet_wrap(~ variable, ncol = 2, scale = "free_y") +
  geom_vline(xintercept = 10, colour = "white", size = 2) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(x = "Aribtrary test scores of students in arbitrary units",
       y = "")
