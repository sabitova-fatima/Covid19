library(tidyverse)
library(lubridate)

plot(c(1, 2, 3, 4, 5), c(5, 4, 3, 2, 1))

cov <- read_csv("covid.csv")
head(cov)

glimpse(cov)

rus <- cov %>% filter(countriesAndTerritories == 'Russia') %>% select(cases, dateRep, popData2019) %>% na.omit()

mean(rus$`Cumulative_number_for_14_days_of_COVID-19_cases_per_100000`, na.rm = T)

qplot(dmy(rus$dateRep), (rus$cases))

