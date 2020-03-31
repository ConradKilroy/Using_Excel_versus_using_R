
#source: https://twitter.com/WeAreRLadies/status/1228696717891002374
install.packages("tidyverse")
library(tidyverse)


test_mtcars <- 
  head(mtcars, n = 10)

test_mtcars %>% 
  mutate(category = case_when(
    mpg > 20 ~ "much efficient",
    mpg > 15 ~ "it ok", 
    TRUE ~ "gas guzzler"
  ))
