
#Excel vs R demo, with a pivot table, decision tree lesson at the end
#source
#http://www.win-vector.com/blog/2016/01/using-excel-versus-using-r/ 
  
url <- "http://www.win-vector.com/dfiles/car.data.csv"

cars <- read.table(url,header=TRUE,sep=',')

#alternative downloaded csv copy
download.file(url,destfile = "car.data.csv")

View(cars)
summary(cars)
str(cars)
with(cars, table(safety, rating))

install.packages("rpart.plot")
library(rpart)
library(rpart.plot)

#decision tree
model <- rpart(rating ~ buying + maint + doors + persons + lug_boot + safety, 
               data=cars, 
               control=rpart.control(maxdepth=6))
#plot that decision tree
rpart.plot(model,extra=4)

model
