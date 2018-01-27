require("tidyverse")
data("nonsense")

# Yule notes that the number of "mental defectives" is correlated with the
# number of UK radio licenses.
ggplot(nonsense, aes(y = mental_defectives, x = radio_licenses,
                     label = year)) +
  geom_point() +
  geom_text(hjust = 0) +
  geom_line() +
  labs(x = "No. of Receiver Radio Licenses (U.K.)",
       y = "No. of Mental Defectives (U.K.)")

lm(mental_defectives ~ radio_licenses, data = nonsense) %>% summary()

# Revisiting the nonsense correlations, Tufte notes that the number of "mental
# defectives" is also correlated with  the number of letters in the U.S.
# President's first name
nonsense <- nonsense %>%
  mutate(name_len = str_length(president))

ggplot(nonsense, aes(y = mental_defectives, x = name_len, label = year)) +
  geom_point() +
  geom_text(hjust = 1) +
  geom_line() +
  labs(x = "Length U.S. President's First Name",
       y = "No. of Mental Defectives (U.K.)") +
  scale_x_continuous(breaks = 6:8)

lm(mental_defectives ~ name_len, data = nonsense) %>% summary()

