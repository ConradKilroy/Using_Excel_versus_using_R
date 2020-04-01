#source
#https://mobile.twitter.com/ejvankesteren/status/1087784059089108993
#https://www.youtube.com/watch?v=kQiDLCC_LFQ
#https://gist.github.com/vankesteren/838249095f181f0b70c277a8b2673ec0

library(tidyverse)
#install.packages("mapproj")
library(mapproj)

#lights_dat <- read_csv("https://ckan.dataplatform.nl/dataset/83402c68-1c05-4aa5-ab28-2e99d2bc2261/resource/dc10e0ac-351a-49b6-b3db-d0152c29dc02/download/paal-20180906.csv")
Seattle <- read.csv("data/Seattle_Real_Time_Fire_911_Calls.csv")

Seattle <- Seattle[!(Seattle$Latitude %>% is.na),]
Seattle <- Seattle[!(Seattle$Longitude %>% is.na),]


pp <- 
  
  Seattle %>% 
  
#  filter(latitude > 50) %>% 
  
  ggplot(aes(x = Longitude, y = Latitude)) + 
  
  geom_point(alpha = 0.03, fill = "#FAFAAB", stroke = 0, pch = 21, size = 1.6) +
  
  geom_point(alpha = 0.8,  fill = "#FAFAAB", stroke = 0, pch = 21, size = 0.2) +
  
  coord_map() + 
  
  theme_void() 



ggsave("Seattle.png", bg = "black", width = 10, height = 10, dpi = 300)
