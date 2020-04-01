#plot.all.correlation.cross.reference

install.packages("GGally")
library(GGally)


mtcars
iris

pairs(mtcars)
plot(mtcars) #same

ggpairs(mtcars, aes(alpha = 0.4))



plot(iris)
pairs(iris) #same

ggpairs(iris, aes(alpha = 0.4))
