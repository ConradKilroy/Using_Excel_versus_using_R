#Does anyone know how to do this in R? That is, represent this cyclical data from the left plot to the right plot? 
#http://cs.lnu.se/isovis/courses/spring07/dac751/papers/TimeSpiralsInfoVis2001.pdf

#source: From <http://www.howtobuildsoftware.com/index.php/how-do/bEZR/python-r-visualization-data-visualization-visualizing-time-series-in-spirals-using-r-or-python> 

Day = c(rep(1,5),rep(2,5),rep(3,5))
Hour = rep(1:5,3)
Sunlight = c(0,1,2,3,0,1,2,3,2,1,0,0,4,2,1)
data = cbind(Day,Hour,Sunlight)

# sample data - hourly for 10 days; daylight from roughly 6:00am to 6:00pm
set.seed(1)     # for reproducibility
Day  <- c(rep(1:10,each=24))
Hour <- rep(1:24)
data <- data.frame(Day,Hour)
data$Sunlight <- with(data,-10*cos(2*pi*(Hour-1+abs(rnorm(240)))/24))
data$Sunlight[data$Sunlight<0] <- 0
library(ggplot2)
ggplot(data,aes(x=Hour,y=10+24*Day+Hour-1))+
  geom_tile(aes(color=Sunlight),size=2)+
  scale_color_gradient(low="black",high="yellow")+
  ylim(0,250)+ labs(y="",x="")+
  coord_polar(theta="x")+
  theme(panel.background=element_rect(fill="black"),panel.grid=element_blank(),
        axis.text.y=element_blank(), axis.text.x=element_text(color="white"),
        axis.ticks.y=element_blank())

