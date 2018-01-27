require("ggplot2")
require("dplyr")
data("average_salary")

ggplot(average_salary, aes(x = salary)) +
  geom_dotplot(binwith = 1)

mean(average_salary$salary)
median(average_salary$salary)
# mode
count(average_salary, salary) %>%
  filter(n == max(n))
