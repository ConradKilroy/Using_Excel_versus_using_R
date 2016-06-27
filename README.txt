
http://www.win-vector.com/blog/2016/01/using-excel-versus-using-r/

Using Excel versus using R
 
Posted on January 15, 2016Author John MountCategories Opinion, Programming, Statistics, TutorialsTags Analytics, data analysis, Excel, R

Here is a video I made showing how R should not be considered “scarier” than Excel to analysts. One of the takeaway points: it is easier to email R procedures than Excel procedures.

https://www.youtube.com/watch?v=T6w_jP3IvNY&feature=youtu.be



Win-Vector’s John Mount shows a simple analysis both in Excel and in R.



A save of the “email” linking to all code and data is here.

The theory is the recipient of the email already had R, RStudio and the required packages installed from previous use. The package install step is only needed once and is:


install.packages(c('rpart','rpart.plot'))




Then all the steps are (in a more cut/paste friendly format):


cars <- read.table('http://www.win-vector.com/dfiles/car.data.csv',header=TRUE,sep=',')
library(rpart)
library(rpart.plot)
model <- rpart(rating ~ buying + maint + doors + persons + lug_boot + safety, data=cars, control=rpart.control(maxdepth=6))
rpart.plot(model,extra=4)
levels(cars$rating)




Note, you would only have to install the packages once- not every time you run an analysis (which is why that command was left out).
